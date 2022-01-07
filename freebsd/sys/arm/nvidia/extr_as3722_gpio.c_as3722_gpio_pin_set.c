
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
struct as3722_softc {scalar_t__ gpio_npins; TYPE_1__** gpio_pins; } ;
typedef int device_t ;
struct TYPE_2__ {int pin_ctrl_reg; } ;


 int AS3722_GPIO_INVERT ;
 int AS3722_GPIO_SIGNAL_OUT ;
 int EINVAL ;
 int GPIO_LOCK (struct as3722_softc*) ;
 int GPIO_UNLOCK (struct as3722_softc*) ;
 int RM1 (struct as3722_softc*,int ,int,int) ;
 struct as3722_softc* device_get_softc (int ) ;

int
as3722_gpio_pin_set(device_t dev, uint32_t pin, uint32_t val)
{
 struct as3722_softc *sc;
 uint8_t tmp;
 int rv;

 sc = device_get_softc(dev);
 if (pin >= sc->gpio_npins)
  return (EINVAL);

 tmp = (val != 0) ? 1 : 0;
 if (sc->gpio_pins[pin]->pin_ctrl_reg & AS3722_GPIO_INVERT)
  tmp ^= 1;

 GPIO_LOCK(sc);
 rv = RM1(sc, AS3722_GPIO_SIGNAL_OUT, (1 << pin), (tmp << pin));
 GPIO_UNLOCK(sc);
 return (rv);
}
