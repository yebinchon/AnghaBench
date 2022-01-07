
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
struct imx51_gpio_softc {size_t gpio_npins; int * gpio_pins; } ;
typedef int device_t ;


 int EINVAL ;
 struct imx51_gpio_softc* device_get_softc (int ) ;
 int imx51_gpio_pin_configure (struct imx51_gpio_softc*,int *,size_t) ;

__attribute__((used)) static int
imx51_gpio_pin_setflags(device_t dev, uint32_t pin, uint32_t flags)
{
 struct imx51_gpio_softc *sc;

 sc = device_get_softc(dev);

 if (pin >= sc->gpio_npins)
  return (EINVAL);

 imx51_gpio_pin_configure(sc, &sc->gpio_pins[pin], flags);

 return (0);
}
