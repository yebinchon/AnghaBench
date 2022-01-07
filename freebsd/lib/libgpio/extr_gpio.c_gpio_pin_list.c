
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int gpio_handle_t ;
struct TYPE_5__ {int g_pin; } ;
typedef TYPE_1__ gpio_config_t ;


 int EINVAL ;
 int GPIOMAXPIN ;
 TYPE_1__* calloc (int,int) ;
 int errno ;
 int gpio_pin_config (int ,TYPE_1__*) ;
 scalar_t__ ioctl (int ,int ,int*) ;

int
gpio_pin_list(gpio_handle_t handle, gpio_config_t **pcfgs)
{
 int maxpins, i;
 gpio_config_t *cfgs;

 *pcfgs = ((void*)0);
 if (ioctl(handle, GPIOMAXPIN, &maxpins) < 0)
  return (-1);

 if (maxpins < 0 || maxpins > 4096) {
  errno = EINVAL;
  return (-1);
 }
 cfgs = calloc(maxpins + 1, sizeof(*cfgs));
 if (cfgs == ((void*)0))
  return (-1);
 for (i = 0; i <= maxpins; i++) {
  cfgs[i].g_pin = i;
  gpio_pin_config(handle, &cfgs[i]);
 }
 *pcfgs = cfgs;

 return (maxpins);
}
