
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_pin {int gp_name; int gp_pin; } ;
typedef int gppin ;
typedef int gpio_pin_t ;
typedef int gpio_handle_t ;


 int GPIOMAXNAME ;
 int GPIOSETNAME ;
 int bzero (struct gpio_pin*,int) ;
 scalar_t__ ioctl (int ,int ,struct gpio_pin*) ;
 int strlcpy (int ,char*,int ) ;

int
gpio_pin_set_name(gpio_handle_t handle, gpio_pin_t pin, char *name)
{
 struct gpio_pin gppin;

 if (name == ((void*)0))
  return (-1);
 bzero(&gppin, sizeof(gppin));
 gppin.gp_pin = pin;
 strlcpy(gppin.gp_name, name, GPIOMAXNAME);
 if (ioctl(handle, GPIOSETNAME, &gppin) < 0)
  return (-1);

 return (0);
}
