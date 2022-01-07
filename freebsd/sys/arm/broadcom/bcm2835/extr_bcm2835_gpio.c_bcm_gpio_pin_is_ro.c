
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcm_gpio_softc {int sc_ro_npins; int* sc_ro_pins; } ;



__attribute__((used)) static int
bcm_gpio_pin_is_ro(struct bcm_gpio_softc *sc, int pin)
{
 int i;

 for (i = 0; i < sc->sc_ro_npins; i++)
  if (pin == sc->sc_ro_pins[i])
   return (1);
 return (0);
}
