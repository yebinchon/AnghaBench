
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct rk30_gpio_softc {int sc_gpio_npins; TYPE_1__* sc_gpio_pins; } ;
typedef int device_t ;
struct TYPE_2__ {scalar_t__ gp_pin; int gp_name; } ;


 int EINVAL ;
 int GPIOMAXNAME ;
 int RK30_GPIO_LOCK (struct rk30_gpio_softc*) ;
 int RK30_GPIO_UNLOCK (struct rk30_gpio_softc*) ;
 struct rk30_gpio_softc* device_get_softc (int ) ;
 int memcpy (char*,int ,int ) ;

__attribute__((used)) static int
rk30_gpio_pin_getname(device_t dev, uint32_t pin, char *name)
{
 struct rk30_gpio_softc *sc = device_get_softc(dev);
 int i;

 for (i = 0; i < sc->sc_gpio_npins; i++) {
  if (sc->sc_gpio_pins[i].gp_pin == pin)
   break;
 }

 if (i >= sc->sc_gpio_npins)
  return (EINVAL);

 RK30_GPIO_LOCK(sc);
 memcpy(name, sc->sc_gpio_pins[i].gp_name, GPIOMAXNAME);
 RK30_GPIO_UNLOCK(sc);

 return (0);
}
