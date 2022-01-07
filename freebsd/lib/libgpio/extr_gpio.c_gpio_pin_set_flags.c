
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct gpio_pin {int gp_flags; int gp_pin; } ;
typedef int gpio_handle_t ;
struct TYPE_3__ {int g_flags; int g_pin; } ;
typedef TYPE_1__ gpio_config_t ;


 int GPIOSETCONFIG ;
 scalar_t__ ioctl (int ,int ,struct gpio_pin*) ;

int
gpio_pin_set_flags(gpio_handle_t handle, gpio_config_t *cfg)
{
 struct gpio_pin gppin;

 if (cfg == ((void*)0))
  return (-1);
 gppin.gp_pin = cfg->g_pin;
 gppin.gp_flags = cfg->g_flags;
 if (ioctl(handle, GPIOSETCONFIG, &gppin) < 0)
  return (-1);

 return (0);
}
