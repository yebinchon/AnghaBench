
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ti_gpio_softc {int dummy; } ;
typedef int device_t ;


 int EINVAL ;
 int GPIO_INTR_EDGE_BOTH ;
 int GPIO_INTR_EDGE_FALLING ;
 int GPIO_INTR_EDGE_RISING ;
 int GPIO_INTR_LEVEL_HIGH ;
 int GPIO_INTR_LEVEL_LOW ;
 int GPIO_PIN_INPUT ;
 int GPIO_PIN_OUTPUT ;
 int GPIO_PIN_PULLDOWN ;
 int GPIO_PIN_PULLUP ;
 struct ti_gpio_softc* device_get_softc (int ) ;
 scalar_t__ ti_gpio_valid_pin (struct ti_gpio_softc*,int) ;

__attribute__((used)) static int
ti_gpio_pin_getcaps(device_t dev, uint32_t pin, uint32_t *caps)
{
 struct ti_gpio_softc *sc;

 sc = device_get_softc(dev);
 if (ti_gpio_valid_pin(sc, pin) != 0)
  return (EINVAL);

 *caps = (GPIO_PIN_INPUT | GPIO_PIN_OUTPUT | GPIO_PIN_PULLUP |
     GPIO_PIN_PULLDOWN | GPIO_INTR_LEVEL_LOW | GPIO_INTR_LEVEL_HIGH |
     GPIO_INTR_EDGE_RISING | GPIO_INTR_EDGE_FALLING |
     GPIO_INTR_EDGE_BOTH);

 return (0);
}
