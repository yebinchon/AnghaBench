
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint32_t ;
struct aml8726_gpio_softc {unsigned int npins; } ;
typedef int device_t ;


 int AML_GPIO_LOCK (struct aml8726_gpio_softc*) ;
 int AML_GPIO_OE_N_REG ;
 int AML_GPIO_UNLOCK (struct aml8726_gpio_softc*) ;
 unsigned int CSR_READ_4 (struct aml8726_gpio_softc*,int ) ;
 int CSR_WRITE_4 (struct aml8726_gpio_softc*,int ,unsigned int) ;
 int EINVAL ;
 unsigned int GPIO_PIN_OUTPUT ;
 struct aml8726_gpio_softc* device_get_softc (int ) ;

__attribute__((used)) static int
aml8726_gpio_pin_setflags(device_t dev, uint32_t pin, uint32_t flags)
{
 struct aml8726_gpio_softc *sc = device_get_softc(dev);
 uint32_t mask = 1U << pin;

 if (pin >= sc->npins)
  return (EINVAL);

 AML_GPIO_LOCK(sc);

 if ((flags & GPIO_PIN_OUTPUT) != 0) {

  CSR_WRITE_4(sc, AML_GPIO_OE_N_REG,
      (CSR_READ_4(sc, AML_GPIO_OE_N_REG) & ~mask));
 } else {

  CSR_WRITE_4(sc, AML_GPIO_OE_N_REG,
      (CSR_READ_4(sc, AML_GPIO_OE_N_REG) | mask));
 }

 AML_GPIO_UNLOCK(sc);

 return (0);
}
