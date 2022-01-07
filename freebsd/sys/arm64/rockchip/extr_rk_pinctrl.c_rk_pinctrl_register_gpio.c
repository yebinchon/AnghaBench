
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rk_pinctrl_softc {TYPE_1__* conf; } ;
typedef int device_t ;
struct TYPE_4__ {int gpio_dev; int gpio_name; } ;
struct TYPE_3__ {int ngpio_bank; TYPE_2__* gpio_bank; } ;


 int ENXIO ;
 scalar_t__ strcmp (char*,int ) ;

__attribute__((used)) static int
rk_pinctrl_register_gpio(struct rk_pinctrl_softc *sc, char *gpio_name,
    device_t gpio_dev)
{
 int i;

 for(i = 0; i < sc->conf->ngpio_bank; i++) {
  if (strcmp(gpio_name, sc->conf->gpio_bank[i].gpio_name) != 0)
   continue;
  sc->conf->gpio_bank[i].gpio_dev = gpio_dev;
  return(0);
 }
 return (ENXIO);
}
