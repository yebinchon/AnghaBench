
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint32_t ;
struct aml8726_gpio_softc {unsigned int npins; } ;
typedef int device_t ;


 int AML_GPIO_OE_N_REG ;
 unsigned int CSR_READ_4 (struct aml8726_gpio_softc*,int ) ;
 int EINVAL ;
 unsigned int GPIO_PIN_INPUT ;
 unsigned int GPIO_PIN_OUTPUT ;
 struct aml8726_gpio_softc* device_get_softc (int ) ;

__attribute__((used)) static int
aml8726_gpio_pin_getflags(device_t dev, uint32_t pin, uint32_t *flags)
{
 struct aml8726_gpio_softc *sc = device_get_softc(dev);
 uint32_t mask = 1U << pin;

 if (pin >= sc->npins)
  return (EINVAL);

 if ((CSR_READ_4(sc, AML_GPIO_OE_N_REG) & mask) == 0) {

  *flags = GPIO_PIN_OUTPUT;
 } else

  *flags = GPIO_PIN_INPUT;

 return (0);
}
