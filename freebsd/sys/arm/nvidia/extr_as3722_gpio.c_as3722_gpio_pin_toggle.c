
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct as3722_softc {int gpio_npins; } ;
typedef int device_t ;


 int AS3722_GPIO_SIGNAL_OUT ;
 int EINVAL ;
 int GPIO_LOCK (struct as3722_softc*) ;
 int GPIO_UNLOCK (struct as3722_softc*) ;
 int RD1 (struct as3722_softc*,int ,int*) ;
 int RM1 (struct as3722_softc*,int ,int,int) ;
 struct as3722_softc* device_get_softc (int ) ;

int
as3722_gpio_pin_toggle(device_t dev, uint32_t pin)
{
 struct as3722_softc *sc;
 uint8_t tmp;
 int rv;

 sc = device_get_softc(dev);
 if (pin >= sc->gpio_npins)
  return (EINVAL);

 GPIO_LOCK(sc);
 rv = RD1(sc, AS3722_GPIO_SIGNAL_OUT, &tmp);
 if (rv != 0) {
  GPIO_UNLOCK(sc);
  return (rv);
 }
 tmp ^= (1 <<pin);
 rv = RM1(sc, AS3722_GPIO_SIGNAL_OUT, (1 << pin), tmp);
 GPIO_UNLOCK(sc);
 return (0);
}
