
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct bcm_gpio_softc {int sc_gpio_npins; TYPE_1__* sc_gpio_pins; } ;
typedef int device_t ;
struct TYPE_2__ {scalar_t__ gp_pin; scalar_t__ gp_caps; } ;


 int BCM_GPIO_LOCK (struct bcm_gpio_softc*) ;
 int BCM_GPIO_UNLOCK (struct bcm_gpio_softc*) ;
 int EINVAL ;
 struct bcm_gpio_softc* device_get_softc (int ) ;

__attribute__((used)) static int
bcm_gpio_pin_getcaps(device_t dev, uint32_t pin, uint32_t *caps)
{
 struct bcm_gpio_softc *sc = device_get_softc(dev);
 int i;

 for (i = 0; i < sc->sc_gpio_npins; i++) {
  if (sc->sc_gpio_pins[i].gp_pin == pin)
   break;
 }

 if (i >= sc->sc_gpio_npins)
  return (EINVAL);

 BCM_GPIO_LOCK(sc);
 *caps = sc->sc_gpio_pins[i].gp_caps;
 BCM_GPIO_UNLOCK(sc);

 return (0);
}
