
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct bcm_gpio_softc {int sc_gpio_npins; TYPE_1__* sc_gpio_pins; } ;
typedef int device_t ;
struct TYPE_2__ {scalar_t__ gp_pin; } ;


 scalar_t__ BCM_GPIO_BANK (scalar_t__) ;
 int BCM_GPIO_GPLEV (scalar_t__) ;
 int BCM_GPIO_LOCK (struct bcm_gpio_softc*) ;
 scalar_t__ BCM_GPIO_MASK (scalar_t__) ;
 scalar_t__ BCM_GPIO_READ (struct bcm_gpio_softc*,int ) ;
 int BCM_GPIO_UNLOCK (struct bcm_gpio_softc*) ;
 int EINVAL ;
 struct bcm_gpio_softc* device_get_softc (int ) ;

__attribute__((used)) static int
bcm_gpio_pin_get(device_t dev, uint32_t pin, unsigned int *val)
{
 struct bcm_gpio_softc *sc = device_get_softc(dev);
 uint32_t bank, reg_data;
 int i;

 for (i = 0; i < sc->sc_gpio_npins; i++) {
  if (sc->sc_gpio_pins[i].gp_pin == pin)
   break;
 }
 if (i >= sc->sc_gpio_npins)
  return (EINVAL);
 bank = BCM_GPIO_BANK(pin);
 BCM_GPIO_LOCK(sc);
 reg_data = BCM_GPIO_READ(sc, BCM_GPIO_GPLEV(bank));
 BCM_GPIO_UNLOCK(sc);
 *val = (reg_data & BCM_GPIO_MASK(pin)) ? 1 : 0;

 return (0);
}
