
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef size_t uint32_t ;
struct as3722_softc {TYPE_1__** gpio_pins; } ;
struct TYPE_2__ {int pin_cfg_flags; int pin_ctrl_reg; } ;


 int AS3722_CFG_BIAS_HIGH_IMPEDANCE ;
 int AS3722_CFG_BIAS_PULL_DOWN ;
 int AS3722_CFG_BIAS_PULL_UP ;
 int AS3722_CFG_OPEN_DRAIN ;
 int AS3722_MODE_INPUT ;
 int AS3722_MODE_INPUT_PULL_DOWN ;
 int AS3722_MODE_INPUT_PULL_UP_LV ;
 int AS3722_MODE_OPEN_DRAIN ;
 int AS3722_MODE_OPEN_DRAIN_LV ;
 int AS3722_MODE_PUSH_PULL ;
 int AS3722_MODE_PUSH_PULL_LV ;
 int AS3722_MODE_TRISTATE ;
 size_t GPIO_PIN_INPUT ;
 size_t GPIO_PIN_OPENDRAIN ;
 size_t GPIO_PIN_PULLDOWN ;
 size_t GPIO_PIN_PULLUP ;
 size_t GPIO_PIN_TRISTATE ;

__attribute__((used)) static int
as3722_gpio_get_mode(struct as3722_softc *sc, uint32_t pin, uint32_t gpio_flags)
{
 uint8_t ctrl;
 int flags;

 ctrl = sc->gpio_pins[pin]->pin_ctrl_reg;
 flags = sc->gpio_pins[pin]->pin_cfg_flags;


 if (flags & AS3722_CFG_BIAS_HIGH_IMPEDANCE ||
     gpio_flags & GPIO_PIN_TRISTATE)
  return (AS3722_MODE_TRISTATE);


 if (flags & AS3722_CFG_OPEN_DRAIN || gpio_flags & GPIO_PIN_OPENDRAIN) {

  if (flags & AS3722_CFG_BIAS_PULL_UP ||
      gpio_flags & GPIO_PIN_PULLUP)
   return (AS3722_MODE_OPEN_DRAIN_LV);
  return (AS3722_MODE_OPEN_DRAIN);
 }

 if (gpio_flags & GPIO_PIN_INPUT) {

  if (flags & AS3722_CFG_BIAS_PULL_UP ||
      gpio_flags & GPIO_PIN_PULLUP)
   return (AS3722_MODE_INPUT_PULL_UP_LV);

  if (flags & AS3722_CFG_BIAS_PULL_DOWN ||
      gpio_flags & GPIO_PIN_PULLDOWN)
   return (AS3722_MODE_INPUT_PULL_DOWN);
  return (AS3722_MODE_INPUT);
 }




 if (flags & AS3722_CFG_BIAS_PULL_DOWN ||
      gpio_flags & GPIO_PIN_PULLDOWN)
  return (AS3722_MODE_PUSH_PULL_LV);
 return (AS3722_MODE_PUSH_PULL);
}
