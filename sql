-- SEE HOW MANY YOU CAN GET THROUGH BY 10am :)  this is test

-- What's the title and ID of the longest film?
-- BONUS points if you use a subquery :) 
select title,film_id,rental_rate from film where rental_rate = (
	select max(rental_rate) from film )
)
2 --
-- What is the title and ID of the film with the lowest replacement cost?
-- BONUS points if you use a subquery :) 
select title,film_id,replacement_cost from film where replacement_cost = (
	select min(replacement_cost) from film 
	)
3 What is the tile and ID of the film with the highest rental_rate?

--select max(rental_rate),title,film_id from film group by film_id order by count(title) desc limit 1;

-4-- Show the payment_id's of all transactions after or on May 1st 2007

 SELECT payment_id,payment_date FROM payment where payment_date = "2007-05-01" group by payment_id ;

5. Show all payment ID's and payment date's with a transaction amount less than $3.

select payment_id, payment_date, amount from payment group by payment_id 
having sum(amount) < 3;
	
6 Get the emails of all customers that shop at store 1 that are inactive (use 'active')

select email,store_id from customer where store_id = '1'




