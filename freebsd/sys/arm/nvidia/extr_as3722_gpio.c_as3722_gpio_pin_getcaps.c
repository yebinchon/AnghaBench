
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint32_t ;
struct as3722_softc {size_t gpio_npins; TYPE_1__** gpio_pins; } ;
typedef int device_t ;
struct TYPE_2__ {size_t pin_caps; } ;


 int EINVAL ;
 int GPIO_LOCK (struct as3722_softc*) ;
 int GPIO_UNLOCK (struct as3722_softc*) ;
 struct as3722_softc* device_get_softc (int ) ;

int
as3722_gpio_pin_getcaps(device_t dev, uint32_t pin, uint32_t *caps)
{
 struct as3722_softc *sc;

 sc = device_get_softc(dev);
 if (pin >= sc->gpio_npins)
  return (EINVAL);
 GPIO_LOCK(sc);
 *caps = sc->gpio_pins[pin]->pin_caps;
 GPIO_UNLOCK(sc);
 return (0);
}
