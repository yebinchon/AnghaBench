
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint32_t ;
struct as3722_softc {size_t gpio_npins; TYPE_1__** gpio_pins; } ;
typedef int device_t ;
struct TYPE_2__ {int pin_name; } ;


 int EINVAL ;
 int GPIOMAXNAME ;
 int GPIO_LOCK (struct as3722_softc*) ;
 int GPIO_UNLOCK (struct as3722_softc*) ;
 struct as3722_softc* device_get_softc (int ) ;
 int memcpy (char*,int ,int ) ;

int
as3722_gpio_pin_getname(device_t dev, uint32_t pin, char *name)
{
 struct as3722_softc *sc;

 sc = device_get_softc(dev);
 if (pin >= sc->gpio_npins)
  return (EINVAL);
 GPIO_LOCK(sc);
 memcpy(name, sc->gpio_pins[pin]->pin_name, GPIOMAXNAME);
 GPIO_UNLOCK(sc);
 return (0);
}
