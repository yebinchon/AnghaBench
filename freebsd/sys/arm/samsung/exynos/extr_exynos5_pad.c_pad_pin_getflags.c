
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct pad_softc {int gpio_npins; TYPE_1__* gpio_pins; } ;
typedef int device_t ;
struct TYPE_2__ {scalar_t__ gp_pin; scalar_t__ gp_flags; } ;


 int EINVAL ;
 int GPIO_LOCK (struct pad_softc*) ;
 int GPIO_UNLOCK (struct pad_softc*) ;
 struct pad_softc* device_get_softc (int ) ;

__attribute__((used)) static int
pad_pin_getflags(device_t dev, uint32_t pin, uint32_t *flags)
{
 struct pad_softc *sc;
 int i;

 sc = device_get_softc(dev);
 for (i = 0; i < sc->gpio_npins; i++) {
  if (sc->gpio_pins[i].gp_pin == pin)
   break;
 }

 if (i >= sc->gpio_npins)
  return (EINVAL);

 GPIO_LOCK(sc);
 *flags = sc->gpio_pins[i].gp_flags;
 GPIO_UNLOCK(sc);

 return (0);
}
