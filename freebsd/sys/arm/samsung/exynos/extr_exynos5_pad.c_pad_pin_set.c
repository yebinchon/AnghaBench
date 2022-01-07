
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct pad_softc {int gpio_npins; TYPE_1__* gpio_pins; } ;
struct gpio_bank {scalar_t__ con; int port; } ;
typedef int device_t ;
struct TYPE_2__ {int gp_pin; } ;


 int EINVAL ;
 int GPIO_LOCK (struct pad_softc*) ;
 int GPIO_UNLOCK (struct pad_softc*) ;
 int PIN_OUT ;
 int READ4 (struct pad_softc*,int ,scalar_t__) ;
 int WRITE4 (struct pad_softc*,int ,scalar_t__,int) ;
 struct pad_softc* device_get_softc (int ) ;
 scalar_t__ get_bank (struct pad_softc*,int ,struct gpio_bank*,int*) ;

__attribute__((used)) static int
pad_pin_set(device_t dev, uint32_t pin, unsigned int value)
{
 struct pad_softc *sc;
 struct gpio_bank bank;
 int pin_shift;
 int reg;
 int i;

 sc = device_get_softc(dev);
 for (i = 0; i < sc->gpio_npins; i++) {
  if (sc->gpio_pins[i].gp_pin == pin)
   break;
 }

 if (i >= sc->gpio_npins)
  return (EINVAL);

 if (get_bank(sc, pin, &bank, &pin_shift) != 0)
  return (EINVAL);

 GPIO_LOCK(sc);
 reg = READ4(sc, bank.port, bank.con + 0x4);
 reg &= ~(PIN_OUT << pin_shift);
 if (value)
  reg |= (PIN_OUT << pin_shift);
 WRITE4(sc, bank.port, bank.con + 0x4, reg);
 GPIO_UNLOCK(sc);

 return (0);
}
