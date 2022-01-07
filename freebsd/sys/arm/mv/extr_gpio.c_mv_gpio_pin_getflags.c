
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint32_t ;
struct mv_gpio_softc {size_t pin_num; TYPE_1__* gpio_setup; } ;
typedef int device_t ;
struct TYPE_2__ {size_t gp_flags; } ;


 int EINVAL ;
 int MV_GPIO_LOCK () ;
 int MV_GPIO_UNLOCK () ;
 struct mv_gpio_softc* device_get_softc (int ) ;

__attribute__((used)) static int
mv_gpio_pin_getflags(device_t dev, uint32_t pin, uint32_t *flags)
{
 struct mv_gpio_softc *sc = device_get_softc(dev);
 if (flags == ((void*)0))
  return (EINVAL);

 if (pin >= sc->pin_num)
  return (EINVAL);

 MV_GPIO_LOCK();
 *flags = sc->gpio_setup[pin].gp_flags;
 MV_GPIO_UNLOCK();

 return (0);
}
