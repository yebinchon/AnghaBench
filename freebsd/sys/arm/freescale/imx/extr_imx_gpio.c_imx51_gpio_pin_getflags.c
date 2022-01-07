
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint32_t ;
struct imx51_gpio_softc {size_t gpio_npins; TYPE_1__* gpio_pins; } ;
typedef int device_t ;
struct TYPE_2__ {size_t gp_flags; } ;


 int EINVAL ;
 struct imx51_gpio_softc* device_get_softc (int ) ;

__attribute__((used)) static int
imx51_gpio_pin_getflags(device_t dev, uint32_t pin, uint32_t *flags)
{
 struct imx51_gpio_softc *sc;

 sc = device_get_softc(dev);

 if (pin >= sc->gpio_npins)
  return (EINVAL);

 *flags = sc->gpio_pins[pin].gp_flags;

 return (0);
}
