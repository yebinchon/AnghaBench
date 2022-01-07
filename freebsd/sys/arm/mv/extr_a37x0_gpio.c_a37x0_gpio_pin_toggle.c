
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct a37x0_gpio_softc {scalar_t__ sc_npins; } ;
typedef int device_t ;


 scalar_t__ A37X0_GPIO_BIT (scalar_t__) ;
 int A37X0_GPIO_OUTPUT (scalar_t__) ;
 int A37X0_GPIO_OUT_EN (scalar_t__) ;
 scalar_t__ A37X0_GPIO_READ (struct a37x0_gpio_softc*,int ) ;
 int A37X0_GPIO_WRITE (struct a37x0_gpio_softc*,int ,scalar_t__) ;
 int EINVAL ;
 struct a37x0_gpio_softc* device_get_softc (int ) ;

__attribute__((used)) static int
a37x0_gpio_pin_toggle(device_t dev, uint32_t pin)
{
 struct a37x0_gpio_softc *sc;
 uint32_t reg;

 sc = device_get_softc(dev);
 if (pin >= sc->sc_npins)
  return (EINVAL);

 reg = A37X0_GPIO_READ(sc, A37X0_GPIO_OUT_EN(pin));
 if ((reg & A37X0_GPIO_BIT(pin)) == 0)
  return (EINVAL);
 reg = A37X0_GPIO_READ(sc, A37X0_GPIO_OUTPUT(pin));
 reg ^= A37X0_GPIO_BIT(pin);
 A37X0_GPIO_WRITE(sc, A37X0_GPIO_OUTPUT(pin), reg);

 return (0);
}
