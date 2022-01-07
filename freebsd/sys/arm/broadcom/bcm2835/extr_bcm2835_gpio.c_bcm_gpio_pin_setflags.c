
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct bcm_gpio_softc {int sc_gpio_npins; TYPE_1__* sc_gpio_pins; } ;
typedef int device_t ;
struct TYPE_2__ {int gp_pin; } ;


 int EINVAL ;
 int bcm_gpio_pin_configure (struct bcm_gpio_softc*,TYPE_1__*,int ) ;
 scalar_t__ bcm_gpio_pin_is_ro (struct bcm_gpio_softc*,int ) ;
 struct bcm_gpio_softc* device_get_softc (int ) ;

__attribute__((used)) static int
bcm_gpio_pin_setflags(device_t dev, uint32_t pin, uint32_t flags)
{
 struct bcm_gpio_softc *sc = device_get_softc(dev);
 int i;

 for (i = 0; i < sc->sc_gpio_npins; i++) {
  if (sc->sc_gpio_pins[i].gp_pin == pin)
   break;
 }

 if (i >= sc->sc_gpio_npins)
  return (EINVAL);


 if (bcm_gpio_pin_is_ro(sc, pin))
  return (EINVAL);

 bcm_gpio_pin_configure(sc, &sc->sc_gpio_pins[i], flags);

 return (0);
}
