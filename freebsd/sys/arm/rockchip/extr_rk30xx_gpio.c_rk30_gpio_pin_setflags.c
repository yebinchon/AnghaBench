
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct rk30_gpio_softc {int sc_gpio_npins; TYPE_1__* sc_gpio_pins; } ;
typedef int device_t ;
struct TYPE_2__ {scalar_t__ gp_pin; } ;


 int EINVAL ;
 struct rk30_gpio_softc* device_get_softc (int ) ;
 int rk30_gpio_pin_configure (struct rk30_gpio_softc*,TYPE_1__*,scalar_t__) ;

__attribute__((used)) static int
rk30_gpio_pin_setflags(device_t dev, uint32_t pin, uint32_t flags)
{
 struct rk30_gpio_softc *sc = device_get_softc(dev);
 int i;

 for (i = 0; i < sc->sc_gpio_npins; i++) {
  if (sc->sc_gpio_pins[i].gp_pin == pin)
   break;
 }

 if (i >= sc->sc_gpio_npins)
  return (EINVAL);

 rk30_gpio_pin_configure(sc, &sc->sc_gpio_pins[i], flags);

 return (0);
}
