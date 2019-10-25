--Q1. employee number, name, gender and salary
select e.emp_no, e.last_name, e.first_name, e.gender, s.salary
from employees as e
left join salaries as s
on e.emp_no = s.emp_no;

--Q2. employees hired in 1986
select * from employees where hire_date between '1986-01-01' and '1986-12-31';

--Q3. department number, department name, the manager's employee number, last name, first name, and start and end employment dates
select d.dept_no, d.dept_name, m.emp_no, e.last_name, e.first_name, m.from_date, m.to_date
from departments as d
left join dept_manager as m
on d.dept_no = m.dept_no
left join employees as e
on m.emp_no = e.emp_no;

--Q4. employee number, last name, first name, and department name
select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees as e
left join dept_emp as de
on e.emp_no = de.emp_no
left join departments as d
on de.dept_no = d.dept_no;

--Q5. employees whose first name is "Hercules" and last names begin with "B."
select * from employees where first_name = 'Hercules' and last_name like 'B%';

--Q6. employees in the Sales department, including their employee number, last name, first name, and department name
select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees as e
left join dept_emp as de
on e.emp_no = de.emp_no
left join departments as d
on de.dept_no = d.dept_no
where dept_name = 'Sales';

--Q7. employees in the Sales and Development departments, including their employee number, last name, first name, and department name
select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees as e
left join dept_emp as de
on e.emp_no = de.emp_no
left join departments as d
on de.dept_no = d.dept_no
where dept_name in ('Sales', 'Development');

--Q8. list the frequency count of employee last names
select last_name, count(last_name) as freq from employees
group by last_name
order by freq desc;