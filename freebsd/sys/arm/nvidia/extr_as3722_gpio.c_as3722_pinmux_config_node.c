
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct as3722_softc {int gpio_npins; TYPE_1__** gpio_pins; int dev; } ;
struct as3722_pincfg {int * function; int flags; } ;
struct TYPE_2__ {int pin_ctrl_reg; int pin_name; int pin_cfg_flags; } ;


 scalar_t__ AS3722_GPIO0_CONTROL ;
 int AS3722_GPIO_IOSF_MASK ;
 int AS3722_GPIO_IOSF_SHIFT ;
 int AS3722_GPIO_MODE_MASK ;
 int AS3722_GPIO_MODE_SHIFT ;
 int AS3722_MODE_INPUT ;
 int AS3722_MODE_PUSH_PULL ;
 int ENXIO ;
 int WR1 (struct as3722_softc*,scalar_t__,int) ;
 int as3722_pinmux_get_function (struct as3722_softc*,int *) ;
 int device_printf (int ,char*,char*,...) ;
 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static int
as3722_pinmux_config_node(struct as3722_softc *sc, char *pin_name,
    struct as3722_pincfg *cfg)
{
 uint8_t ctrl;
 int rv, fnc, pin;

 for (pin = 0; pin < sc->gpio_npins; pin++) {
  if (strcmp(sc->gpio_pins[pin]->pin_name, pin_name) == 0)
    break;
 }
 if (pin >= sc->gpio_npins) {
  device_printf(sc->dev, "Unknown pin: %s\n", pin_name);
  return (ENXIO);
 }

 ctrl = sc->gpio_pins[pin]->pin_ctrl_reg;
 sc->gpio_pins[pin]->pin_cfg_flags = cfg->flags;
 if (cfg->function != ((void*)0)) {
  fnc = as3722_pinmux_get_function(sc, cfg->function);
  if (fnc == -1) {
   device_printf(sc->dev,
       "Unknown function %s for pin %s\n", cfg->function,
       sc->gpio_pins[pin]->pin_name);
   return (ENXIO);
  }
  switch (fnc) {
  case 137:
  case 129:
  case 136:
  case 134:
  case 139:
  case 132:
  case 135:
   ctrl &= ~(AS3722_GPIO_MODE_MASK <<
       AS3722_GPIO_MODE_SHIFT);
   ctrl |= AS3722_MODE_PUSH_PULL << AS3722_GPIO_MODE_SHIFT;

   break;
  case 138:
  case 133:
  case 130:
  case 128:
  case 131:
   ctrl &= ~(AS3722_GPIO_MODE_MASK <<
       AS3722_GPIO_MODE_SHIFT);
   ctrl |= AS3722_MODE_INPUT << AS3722_GPIO_MODE_SHIFT;


  default:
   break;
  }
  ctrl &= ~(AS3722_GPIO_IOSF_MASK << AS3722_GPIO_IOSF_SHIFT);
  ctrl |= fnc << AS3722_GPIO_IOSF_SHIFT;
 }
 rv = 0;
 if (ctrl != sc->gpio_pins[pin]->pin_ctrl_reg) {
  rv = WR1(sc, AS3722_GPIO0_CONTROL + pin, ctrl);
  sc->gpio_pins[pin]->pin_ctrl_reg = ctrl;
 }
 return (rv);
}
