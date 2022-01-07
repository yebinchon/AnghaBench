
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint32_t ;
struct imx51_gpio_softc {size_t gpio_npins; TYPE_1__* gpio_pins; } ;
typedef int device_t ;
struct TYPE_2__ {int gp_flags; } ;


 int EINVAL ;
 int GPIO_PIN_OPENDRAIN ;
 int IMX_GPIO_DR_REG ;
 int IMX_GPIO_PSR_REG ;
 size_t READ4 (struct imx51_gpio_softc*,int ) ;
 struct imx51_gpio_softc* device_get_softc (int ) ;

__attribute__((used)) static int
imx51_gpio_pin_get(device_t dev, uint32_t pin, unsigned int *val)
{
 struct imx51_gpio_softc *sc;

 sc = device_get_softc(dev);

 if (pin >= sc->gpio_npins)
  return (EINVAL);
 if (sc->gpio_pins[pin].gp_flags & GPIO_PIN_OPENDRAIN)
  *val = (READ4(sc, IMX_GPIO_PSR_REG) >> pin) & 1;
 else
  *val = (READ4(sc, IMX_GPIO_DR_REG) >> pin) & 1;

 return (0);
}
