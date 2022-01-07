
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct bcm_gpio_softc {int sc_gpio_npins; TYPE_1__* sc_gpio_pins; } ;
typedef int device_t ;
struct TYPE_2__ {int gp_pin; } ;


 int BCM_GPIO_BANK (int) ;
 int BCM_GPIO_GPCLR (int) ;
 int BCM_GPIO_GPLEV (int) ;
 int BCM_GPIO_GPSET (int) ;
 int BCM_GPIO_LOCK (struct bcm_gpio_softc*) ;
 int BCM_GPIO_MASK (int) ;
 int BCM_GPIO_READ (struct bcm_gpio_softc*,int ) ;
 int BCM_GPIO_UNLOCK (struct bcm_gpio_softc*) ;
 int BCM_GPIO_WRITE (struct bcm_gpio_softc*,int,int) ;
 int EINVAL ;
 scalar_t__ bcm_gpio_pin_is_ro (struct bcm_gpio_softc*,int) ;
 struct bcm_gpio_softc* device_get_softc (int ) ;

__attribute__((used)) static int
bcm_gpio_pin_toggle(device_t dev, uint32_t pin)
{
 struct bcm_gpio_softc *sc = device_get_softc(dev);
 uint32_t bank, data, reg;
 int i;

 for (i = 0; i < sc->sc_gpio_npins; i++) {
  if (sc->sc_gpio_pins[i].gp_pin == pin)
   break;
 }
 if (i >= sc->sc_gpio_npins)
  return (EINVAL);

 if (bcm_gpio_pin_is_ro(sc, pin))
  return (EINVAL);
 BCM_GPIO_LOCK(sc);
 bank = BCM_GPIO_BANK(pin);
 data = BCM_GPIO_READ(sc, BCM_GPIO_GPLEV(bank));
 if (data & BCM_GPIO_MASK(pin))
  reg = BCM_GPIO_GPCLR(bank);
 else
  reg = BCM_GPIO_GPSET(bank);
 BCM_GPIO_WRITE(sc, reg, BCM_GPIO_MASK(pin));
 BCM_GPIO_UNLOCK(sc);

 return (0);
}
