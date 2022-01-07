
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
typedef int gpio_pin_t ;
typedef int gpio_handle_t ;
struct TYPE_5__ {int g_flags; int g_pin; } ;
typedef TYPE_1__ gpio_config_t ;
typedef int cfg ;


 int bzero (TYPE_1__*,int) ;
 scalar_t__ gpio_pin_config (int ,TYPE_1__*) ;
 int gpio_pin_set_flags (int ,TYPE_1__*) ;

__attribute__((used)) static int
gpio_pin_set_flag(gpio_handle_t handle, gpio_pin_t pin, uint32_t flag)
{
 gpio_config_t cfg;

 bzero(&cfg, sizeof(cfg));
 cfg.g_pin = pin;
 if (gpio_pin_config(handle, &cfg) < 0)
  return (-1);
 cfg.g_flags = flag;

 return (gpio_pin_set_flags(handle, &cfg));
}
