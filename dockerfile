FROM php:7.4-apache
WORKDIR /var/www/html
COPY . /var/www/html
RUN apt-get update && apt-get install -y \
RUN docker-php-ext-install mysqli
ENV PHP_ENV production
EXPOSE 8080
CMD ["apache2-foreground"]
