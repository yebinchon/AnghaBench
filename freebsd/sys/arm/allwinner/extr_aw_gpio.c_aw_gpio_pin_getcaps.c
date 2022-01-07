
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct aw_gpio_softc {TYPE_1__* padconf; } ;
typedef int device_t ;
struct TYPE_2__ {scalar_t__ npins; } ;


 scalar_t__ AW_GPIO_DEFAULT_CAPS ;
 int EINVAL ;
 struct aw_gpio_softc* device_get_softc (int ) ;

__attribute__((used)) static int
aw_gpio_pin_getcaps(device_t dev, uint32_t pin, uint32_t *caps)
{
 struct aw_gpio_softc *sc;

 sc = device_get_softc(dev);
 if (pin >= sc->padconf->npins)
  return (EINVAL);

 *caps = AW_GPIO_DEFAULT_CAPS;

 return (0);
}
