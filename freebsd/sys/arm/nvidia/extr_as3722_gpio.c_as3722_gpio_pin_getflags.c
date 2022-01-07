
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef size_t uint32_t ;
struct as3722_softc {size_t gpio_npins; TYPE_1__** gpio_pins; } ;
typedef int device_t ;
struct TYPE_2__ {int pin_ctrl_reg; } ;


 int AS3722_GPIO_INVERT ;
 int AS3722_GPIO_IOSF_MASK ;
 int AS3722_GPIO_IOSF_SHIFT ;
 int AS3722_GPIO_MODE_MASK ;
 int AS3722_GPIO_MODE_SHIFT ;
 int AS3722_IOSF_GPIO ;
 int EINVAL ;
 int ENXIO ;
 int GPIO_LOCK (struct as3722_softc*) ;
 size_t GPIO_PIN_INPUT ;
 size_t GPIO_PIN_INVIN ;
 size_t GPIO_PIN_INVOUT ;
 size_t GPIO_PIN_OPENDRAIN ;
 size_t GPIO_PIN_OUTPUT ;
 size_t GPIO_PIN_PULLDOWN ;
 size_t GPIO_PIN_PULLUP ;
 size_t GPIO_PIN_TRISTATE ;
 int GPIO_UNLOCK (struct as3722_softc*) ;
 struct as3722_softc* device_get_softc (int ) ;

int
as3722_gpio_pin_getflags(device_t dev, uint32_t pin, uint32_t *out_flags)
{
 struct as3722_softc *sc;
 uint8_t tmp, mode, iosf;
 uint32_t flags;
 bool inverted;

 sc = device_get_softc(dev);
 if (pin >= sc->gpio_npins)
  return (EINVAL);

 GPIO_LOCK(sc);
 tmp = sc->gpio_pins[pin]->pin_ctrl_reg;
 GPIO_UNLOCK(sc);
 iosf = (tmp >> AS3722_GPIO_IOSF_SHIFT) & AS3722_GPIO_IOSF_MASK;
 mode = (tmp >> AS3722_GPIO_MODE_SHIFT) & AS3722_GPIO_MODE_MASK;
 inverted = (tmp & AS3722_GPIO_INVERT) != 0;

 if (iosf != AS3722_IOSF_GPIO)
  return (ENXIO);

 flags = 0;
 switch (mode) {
 case 135:
  flags = GPIO_PIN_INPUT;
  break;
 case 130:
 case 129:
  flags = GPIO_PIN_OUTPUT;
  break;
 case 132:
 case 131:
  flags = GPIO_PIN_INPUT | GPIO_PIN_OUTPUT | GPIO_PIN_OPENDRAIN;
  break;
 case 128:
  flags = GPIO_PIN_TRISTATE;
  break;
 case 133:
  flags = GPIO_PIN_INPUT | GPIO_PIN_PULLUP;
  break;

 case 134:
  flags = GPIO_PIN_OUTPUT | GPIO_PIN_PULLDOWN;
  break;
 }
 if (inverted)
  flags |= GPIO_PIN_INVIN | GPIO_PIN_INVOUT;
 *out_flags = flags;
 return (0);
}
