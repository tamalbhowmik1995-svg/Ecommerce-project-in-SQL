use temp;
select * from Ecommerce;
--only toys list--
select * from Ecommerce
where product_category='Toys';
--Distinct City and Product--
select distinct city
from Ecommerce;
select distinct product_category
from Ecommerce;
--Product sales in January 2023--
select * from Ecommerce
where date between '2023-01-01' and '2023-31-01';
--Total prodcut sales--
select sum(quantity) as total_product_sales
from Ecommerce;
--Total product sales in individual--
select product_category, sum(quantity) as total_toys_sales
from Ecommerce
group by product_category
order by total_toys_sales desc;
--product in maximum discount--
select product_category, max(discount_amount) as max_discount
from Ecommerce
group by product_category
order by max_discount desc;
--product sold with sum and average amount--
select product_category, sum(total_amount) as total_amount,
avg(total_amount) as avg_amount
from Ecommerce
group by product_category;
--maximum sales in city--
select city, count(quantity) as city_max_sales,
sum(total_amount) as total_amount
from Ecommerce
group by city
order by city_max_sales desc;
--product in highest price--
select product_category, count(unit_price) as highest_price
from Ecommerce
group by product_category
order by highest_price desc;
--maximum payment method--
select payment_method, count(*) as max_payment
from Ecommerce
group by payment_method
order by max_payment desc;
--maximum payment method with amount--
select payment_method, count(*) as max_payment,
sum(total_amount) as total_amount
from Ecommerce
group by payment_method
order by max_payment desc;
--maximum device use for order--
select device_type, count(*) as max_device
from Ecommerce
group by device_type
order by max_device desc;
--maximum amount paid in device--
select device_type, count(*) as total_sales,
sum(total_amount) as total_amount
from Ecommerce
group by device_type
order by total_sales desc;
--gender wise maximum sales--
select gender, count(*) as total_gender,
sum(total_amount) as total_amount
from Ecommerce
group by gender
order by total_gender desc;
--total customer order--
select count(customer_id) as customer
from Ecommerce;
--top 3 highet product sales--
select * from Ecommerce
order by total_amount desc
limit 3;
--top 3 product with highest rating--
select * from Ecommerce
order by customer_rating desc
limit 3;
--maximum order by age--
select age, count(*) as total_age,
sum(quantity) as total_qty
from Ecommerce
group by age
order by total_age desc;



