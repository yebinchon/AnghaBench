
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_req {int gp_value; int gp_pin; } ;
typedef int gpreq ;
typedef int gpio_value_t ;
typedef int gpio_pin_t ;
typedef int gpio_handle_t ;


 int GPIOGET ;
 int GPIO_VALUE_INVALID ;
 int bzero (struct gpio_req*,int) ;
 scalar_t__ ioctl (int ,int ,struct gpio_req*) ;

gpio_value_t
gpio_pin_get(gpio_handle_t handle, gpio_pin_t pin)
{
 struct gpio_req gpreq;

 bzero(&gpreq, sizeof(gpreq));
 gpreq.gp_pin = pin;
 if (ioctl(handle, GPIOGET, &gpreq) < 0)
  return (GPIO_VALUE_INVALID);

 return (gpreq.gp_value);
}
