
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct bcm_gpio_softc {int sc_gpio_npins; TYPE_1__* sc_gpio_pins; } ;
typedef int device_t ;
struct TYPE_2__ {int gp_pin; } ;


 int BCM_GPIO_BANK (int ) ;
 int BCM_GPIO_GPCLR (int ) ;
 int BCM_GPIO_GPSET (int ) ;
 int BCM_GPIO_LOCK (struct bcm_gpio_softc*) ;
 int BCM_GPIO_MASK (int ) ;
 int BCM_GPIO_UNLOCK (struct bcm_gpio_softc*) ;
 int BCM_GPIO_WRITE (struct bcm_gpio_softc*,int ,int ) ;
 int EINVAL ;
 scalar_t__ bcm_gpio_pin_is_ro (struct bcm_gpio_softc*,int ) ;
 struct bcm_gpio_softc* device_get_softc (int ) ;

__attribute__((used)) static int
bcm_gpio_pin_set(device_t dev, uint32_t pin, unsigned int value)
{
 struct bcm_gpio_softc *sc = device_get_softc(dev);
 uint32_t bank, reg;
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
 if (value)
  reg = BCM_GPIO_GPSET(bank);
 else
  reg = BCM_GPIO_GPCLR(bank);
 BCM_GPIO_WRITE(sc, reg, BCM_GPIO_MASK(pin));
 BCM_GPIO_UNLOCK(sc);

 return (0);
}
