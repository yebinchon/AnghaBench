
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint32_t ;
struct aml8726_gpio_softc {unsigned int npins; } ;
typedef int device_t ;


 int AML_GPIO_IN_REG ;
 unsigned int CSR_READ_4 (struct aml8726_gpio_softc*,int ) ;
 int EINVAL ;
 struct aml8726_gpio_softc* device_get_softc (int ) ;

__attribute__((used)) static int
aml8726_gpio_pin_get(device_t dev, uint32_t pin, unsigned int *value)
{
 struct aml8726_gpio_softc *sc = device_get_softc(dev);
 uint32_t mask = 1U << pin;

 if (pin >= sc->npins)
  return (EINVAL);

 *value = (CSR_READ_4(sc, AML_GPIO_IN_REG) & mask) ? 1 : 0;

 return (0);
}
