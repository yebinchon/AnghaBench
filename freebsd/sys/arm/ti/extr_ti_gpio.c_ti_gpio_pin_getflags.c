
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ti_gpio_softc {int dummy; } ;
typedef int device_t ;


 int EINVAL ;
 int TI_GPIO_GET_FLAGS (int ,int ,int *) ;
 int TI_GPIO_LOCK (struct ti_gpio_softc*) ;
 int TI_GPIO_UNLOCK (struct ti_gpio_softc*) ;
 struct ti_gpio_softc* device_get_softc (int ) ;
 scalar_t__ ti_gpio_valid_pin (struct ti_gpio_softc*,int ) ;

__attribute__((used)) static int
ti_gpio_pin_getflags(device_t dev, uint32_t pin, uint32_t *flags)
{
 struct ti_gpio_softc *sc;

 sc = device_get_softc(dev);
 if (ti_gpio_valid_pin(sc, pin) != 0)
  return (EINVAL);


 TI_GPIO_LOCK(sc);
 TI_GPIO_GET_FLAGS(dev, pin, flags);
 TI_GPIO_UNLOCK(sc);

 return (0);
}
