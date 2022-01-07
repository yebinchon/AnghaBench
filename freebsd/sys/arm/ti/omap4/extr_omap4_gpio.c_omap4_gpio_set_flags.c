
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ti_gpio_softc {int sc_bank; } ;
typedef int device_t ;


 int GPIO_PIN_INPUT ;
 int GPIO_PIN_OUTPUT ;
 int GPIO_PIN_PULLDOWN ;
 int GPIO_PIN_PULLUP ;
 unsigned int PADCONF_PIN_INPUT ;
 unsigned int PADCONF_PIN_INPUT_PULLDOWN ;
 unsigned int PADCONF_PIN_INPUT_PULLUP ;
 unsigned int PADCONF_PIN_OUTPUT ;
 struct ti_gpio_softc* device_get_softc (int ) ;
 int ti_pinmux_padconf_set_gpiomode (int,unsigned int) ;

__attribute__((used)) static int
omap4_gpio_set_flags(device_t dev, uint32_t gpio, uint32_t flags)
{
 unsigned int state = 0;
 struct ti_gpio_softc *sc;

 sc = device_get_softc(dev);

 if (flags & GPIO_PIN_OUTPUT)
  state = PADCONF_PIN_OUTPUT;
 else if (flags & GPIO_PIN_INPUT) {
  if (flags & GPIO_PIN_PULLUP)
   state = PADCONF_PIN_INPUT_PULLUP;
  else if (flags & GPIO_PIN_PULLDOWN)
   state = PADCONF_PIN_INPUT_PULLDOWN;
  else
   state = PADCONF_PIN_INPUT;
 }
 return ti_pinmux_padconf_set_gpiomode((sc->sc_bank-1)*32 + gpio, state);
}
