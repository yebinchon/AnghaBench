
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct a37x0_gpio_softc {scalar_t__ sc_npins; } ;
typedef int device_t ;


 scalar_t__ A37X0_GPIO_BIT (scalar_t__) ;
 int A37X0_GPIO_INPUT (scalar_t__) ;
 int A37X0_GPIO_OUTPUT (scalar_t__) ;
 int A37X0_GPIO_OUT_EN (scalar_t__) ;
 scalar_t__ A37X0_GPIO_READ (struct a37x0_gpio_softc*,int ) ;
 int EINVAL ;
 struct a37x0_gpio_softc* device_get_softc (int ) ;

__attribute__((used)) static int
a37x0_gpio_pin_get(device_t dev, uint32_t pin, unsigned int *val)
{
 struct a37x0_gpio_softc *sc;
 uint32_t reg;

 sc = device_get_softc(dev);
 if (pin >= sc->sc_npins)
  return (EINVAL);

 reg = A37X0_GPIO_READ(sc, A37X0_GPIO_OUT_EN(pin));
 if ((reg & A37X0_GPIO_BIT(pin)) != 0)
  reg = A37X0_GPIO_READ(sc, A37X0_GPIO_OUTPUT(pin));
 else
  reg = A37X0_GPIO_READ(sc, A37X0_GPIO_INPUT(pin));
 *val = ((reg & A37X0_GPIO_BIT(pin)) != 0) ? 1 : 0;

 return (0);
}
