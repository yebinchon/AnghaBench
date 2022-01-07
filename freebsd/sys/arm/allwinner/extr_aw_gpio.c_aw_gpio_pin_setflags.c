
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct aw_gpio_softc {TYPE_1__* padconf; } ;
typedef int device_t ;
struct TYPE_2__ {scalar_t__ npins; } ;


 int AW_GPIO_LOCK (struct aw_gpio_softc*) ;
 int AW_GPIO_UNLOCK (struct aw_gpio_softc*) ;
 int EINVAL ;
 int aw_gpio_pin_configure (struct aw_gpio_softc*,scalar_t__,scalar_t__) ;
 struct aw_gpio_softc* device_get_softc (int ) ;

__attribute__((used)) static int
aw_gpio_pin_setflags(device_t dev, uint32_t pin, uint32_t flags)
{
 struct aw_gpio_softc *sc;
 int err;

 sc = device_get_softc(dev);
 if (pin > sc->padconf->npins)
  return (EINVAL);

 AW_GPIO_LOCK(sc);
 err = aw_gpio_pin_configure(sc, pin, flags);
 AW_GPIO_UNLOCK(sc);

 return (err);
}
