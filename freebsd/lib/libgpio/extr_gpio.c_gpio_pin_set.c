
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_req {scalar_t__ gp_value; int gp_pin; } ;
typedef int gpreq ;
typedef scalar_t__ gpio_value_t ;
typedef int gpio_pin_t ;
typedef int gpio_handle_t ;


 int GPIOSET ;
 scalar_t__ GPIO_VALUE_INVALID ;
 int bzero (struct gpio_req*,int) ;
 scalar_t__ ioctl (int ,int ,struct gpio_req*) ;

int
gpio_pin_set(gpio_handle_t handle, gpio_pin_t pin, gpio_value_t value)
{
 struct gpio_req gpreq;

 if (value == GPIO_VALUE_INVALID)
  return (-1);
 bzero(&gpreq, sizeof(gpreq));
 gpreq.gp_pin = pin;
 gpreq.gp_value = value;
 if (ioctl(handle, GPIOSET, &gpreq) < 0)
  return (-1);

 return (0);
}
