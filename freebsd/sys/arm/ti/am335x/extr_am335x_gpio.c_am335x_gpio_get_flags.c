
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ti_gpio_softc {int sc_bank; } ;
typedef int device_t ;


 int EINVAL ;
 int GPIO_PIN_INPUT ;
 int GPIO_PIN_OUTPUT ;
 int GPIO_PIN_PULLDOWN ;
 int GPIO_PIN_PULLUP ;





 struct ti_gpio_softc* device_get_softc (int ) ;
 scalar_t__ ti_pinmux_padconf_get_gpiomode (int,unsigned int*) ;

__attribute__((used)) static int
am335x_gpio_get_flags(device_t dev, uint32_t gpio, uint32_t *flags)
{
 unsigned int state;
 struct ti_gpio_softc *sc = device_get_softc(dev);

 if (ti_pinmux_padconf_get_gpiomode(sc->sc_bank*32 + gpio, &state) != 0) {
  *flags = 0;
  return (EINVAL);
 } else {
  switch (state) {
   case 129:
    *flags = GPIO_PIN_OUTPUT;
    break;
   case 128:
    *flags = GPIO_PIN_OUTPUT | GPIO_PIN_PULLUP;
    break;
   case 132:
    *flags = GPIO_PIN_INPUT;
    break;
   case 130:
    *flags = GPIO_PIN_INPUT | GPIO_PIN_PULLUP;
    break;
   case 131:
    *flags = GPIO_PIN_INPUT | GPIO_PIN_PULLDOWN;
    break;
   default:
    *flags = 0;
    break;
  }
 }

 return (0);
}
