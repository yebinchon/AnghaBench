
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct pad_softc {int gpio_npins; TYPE_1__* gpio_pins; } ;
typedef int device_t ;
struct TYPE_2__ {scalar_t__ gp_pin; } ;


 int EINVAL ;
 struct pad_softc* device_get_softc (int ) ;
 int pad_pin_configure (struct pad_softc*,TYPE_1__*,scalar_t__) ;

__attribute__((used)) static int
pad_pin_setflags(device_t dev, uint32_t pin, uint32_t flags)
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

 pad_pin_configure(sc, &sc->gpio_pins[i], flags);

 return (0);
}
