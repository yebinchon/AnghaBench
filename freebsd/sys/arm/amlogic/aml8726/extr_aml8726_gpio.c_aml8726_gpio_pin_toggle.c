
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct aml8726_gpio_softc {scalar_t__ npins; int * res; } ;
typedef int device_t ;


 int AML_GPIO_LOCK (struct aml8726_gpio_softc*) ;
 int AML_GPIO_OUT_REG ;
 int AML_GPIO_UNLOCK (struct aml8726_gpio_softc*) ;
 scalar_t__ CSR_READ_4 (struct aml8726_gpio_softc*,int ) ;
 int CSR_WRITE_4 (struct aml8726_gpio_softc*,int ,scalar_t__) ;
 int EINVAL ;
 struct aml8726_gpio_softc* device_get_softc (int ) ;
 scalar_t__ rman_get_start (int ) ;

__attribute__((used)) static int
aml8726_gpio_pin_toggle(device_t dev, uint32_t pin)
{
 struct aml8726_gpio_softc *sc = device_get_softc(dev);
 uint32_t mask;

 if (pin >= sc->npins)
  return (EINVAL);




 if (rman_get_start(sc->res[1]) == rman_get_start(sc->res[0]))
  pin += 16;

 mask = 1U << pin;

 AML_GPIO_LOCK(sc);

 CSR_WRITE_4(sc, AML_GPIO_OUT_REG,
     CSR_READ_4(sc, AML_GPIO_OUT_REG) ^ mask);

 AML_GPIO_UNLOCK(sc);

 return (0);
}
