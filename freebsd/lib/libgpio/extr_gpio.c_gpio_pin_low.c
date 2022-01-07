
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gpio_pin_t ;
typedef int gpio_handle_t ;


 int GPIO_VALUE_LOW ;
 int gpio_pin_set (int ,int ,int ) ;

int
gpio_pin_low(gpio_handle_t handle, gpio_pin_t pin)
{
 return (gpio_pin_set(handle, pin, GPIO_VALUE_LOW));
}
