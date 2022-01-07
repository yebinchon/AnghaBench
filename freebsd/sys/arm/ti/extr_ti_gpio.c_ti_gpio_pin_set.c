
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ti_gpio_softc {int dummy; } ;
typedef int device_t ;


 int EINVAL ;
 unsigned int GPIO_PIN_LOW ;
 int TI_GPIO_CLEARDATAOUT ;
 int TI_GPIO_LOCK (struct ti_gpio_softc*) ;
 int TI_GPIO_MASK (int ) ;
 int TI_GPIO_SETDATAOUT ;
 int TI_GPIO_UNLOCK (struct ti_gpio_softc*) ;
 struct ti_gpio_softc* device_get_softc (int ) ;
 scalar_t__ ti_gpio_valid_pin (struct ti_gpio_softc*,int ) ;
 int ti_gpio_write_4 (struct ti_gpio_softc*,int ,int ) ;

__attribute__((used)) static int
ti_gpio_pin_set(device_t dev, uint32_t pin, unsigned int value)
{
 struct ti_gpio_softc *sc;
 uint32_t reg;

 sc = device_get_softc(dev);
 if (ti_gpio_valid_pin(sc, pin) != 0)
  return (EINVAL);

 TI_GPIO_LOCK(sc);
 if (value == GPIO_PIN_LOW)
  reg = TI_GPIO_CLEARDATAOUT;
 else
  reg = TI_GPIO_SETDATAOUT;
 ti_gpio_write_4(sc, reg, TI_GPIO_MASK(pin));
 TI_GPIO_UNLOCK(sc);

 return (0);
}
