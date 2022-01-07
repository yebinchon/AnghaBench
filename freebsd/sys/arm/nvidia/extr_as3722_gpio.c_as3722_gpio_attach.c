
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct as3722_softc {int gpio_npins; struct as3722_gpio_pin** gpio_pins; int dev; int * gpio_busdev; int gpio_lock; } ;
struct as3722_gpio_pin {int pin_caps; int pin_name; int pin_ctrl_reg; } ;
typedef int phandle_t ;


 scalar_t__ AS3722_GPIO0_CONTROL ;
 int ENXIO ;
 int GPIO_PIN_INPUT ;
 int GPIO_PIN_INVIN ;
 int GPIO_PIN_INVOUT ;
 int GPIO_PIN_OPENDRAIN ;
 int GPIO_PIN_OUTPUT ;
 int GPIO_PIN_PULLDOWN ;
 int GPIO_PIN_PULLUP ;
 int GPIO_PIN_PUSHPULL ;
 int GPIO_PIN_TRISTATE ;
 int M_AS3722_GPIO ;
 int M_WAITOK ;
 int M_ZERO ;
 int NGPIO ;
 int RD1 (struct as3722_softc*,scalar_t__,int *) ;
 int device_printf (int ,char*,int ) ;
 int * gpiobus_attach_bus (int ) ;
 void* malloc (int,int ,int) ;
 int sprintf (int ,char*,int) ;
 int sx_init (int *,char*) ;

int
as3722_gpio_attach(struct as3722_softc *sc, phandle_t node)
{
 struct as3722_gpio_pin *pin;
 int i, rv;

 sx_init(&sc->gpio_lock, "AS3722 GPIO lock");
 sc->gpio_npins = NGPIO;
 sc->gpio_pins = malloc(sizeof(struct as3722_gpio_pin *) *
     sc->gpio_npins, M_AS3722_GPIO, M_WAITOK | M_ZERO);


 sc->gpio_busdev = gpiobus_attach_bus(sc->dev);
 if (sc->gpio_busdev == ((void*)0))
  return (ENXIO);
 for (i = 0; i < sc->gpio_npins; i++) {
  sc->gpio_pins[i] = malloc(sizeof(struct as3722_gpio_pin),
      M_AS3722_GPIO, M_WAITOK | M_ZERO);
  pin = sc->gpio_pins[i];
  sprintf(pin->pin_name, "gpio%d", i);
  pin->pin_caps = GPIO_PIN_INPUT | GPIO_PIN_OUTPUT |
      GPIO_PIN_OPENDRAIN | GPIO_PIN_PUSHPULL | GPIO_PIN_TRISTATE |
      GPIO_PIN_PULLUP | GPIO_PIN_PULLDOWN | GPIO_PIN_INVIN |
      GPIO_PIN_INVOUT;
  rv = RD1(sc, AS3722_GPIO0_CONTROL + i, &pin->pin_ctrl_reg);
  if (rv != 0) {
   device_printf(sc->dev,
       "Cannot read configuration for pin %s\n",
       sc->gpio_pins[i]->pin_name);
  }
 }
 return (0);
}
