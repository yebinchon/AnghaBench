
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct gpio_pin {int gp_flags; int gp_caps; int gp_name; int gp_pin; } ;
typedef int gpio_handle_t ;
struct TYPE_3__ {int g_flags; int g_caps; int g_name; int g_pin; } ;
typedef TYPE_1__ gpio_config_t ;


 int GPIOGETCONFIG ;
 int GPIOMAXNAME ;
 scalar_t__ ioctl (int ,int ,struct gpio_pin*) ;
 int strlcpy (int ,int ,int ) ;

int
gpio_pin_config(gpio_handle_t handle, gpio_config_t *cfg)
{
 struct gpio_pin gppin;

 if (cfg == ((void*)0))
  return (-1);
 gppin.gp_pin = cfg->g_pin;
 if (ioctl(handle, GPIOGETCONFIG, &gppin) < 0)
  return (-1);
 strlcpy(cfg->g_name, gppin.gp_name, GPIOMAXNAME);
 cfg->g_caps = gppin.gp_caps;
 cfg->g_flags = gppin.gp_flags;

 return (0);
}
