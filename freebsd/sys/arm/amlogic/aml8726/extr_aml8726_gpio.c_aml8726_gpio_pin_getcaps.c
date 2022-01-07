
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct aml8726_gpio_softc {scalar_t__ npins; } ;
typedef int device_t ;


 int EINVAL ;
 scalar_t__ GPIO_PIN_INPUT ;
 scalar_t__ GPIO_PIN_OUTPUT ;
 struct aml8726_gpio_softc* device_get_softc (int ) ;

__attribute__((used)) static int
aml8726_gpio_pin_getcaps(device_t dev, uint32_t pin, uint32_t *caps)
{
 struct aml8726_gpio_softc *sc = device_get_softc(dev);

 if (pin >= sc->npins)
  return (EINVAL);

 *caps = (GPIO_PIN_INPUT | GPIO_PIN_OUTPUT);

 return (0);
}
