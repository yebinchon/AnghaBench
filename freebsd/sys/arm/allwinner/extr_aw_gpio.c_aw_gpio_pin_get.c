
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct aw_gpio_softc {int dummy; } ;
typedef int device_t ;


 int AW_GPIO_LOCK (struct aw_gpio_softc*) ;
 int AW_GPIO_UNLOCK (struct aw_gpio_softc*) ;
 int aw_gpio_pin_get_locked (struct aw_gpio_softc*,int ,unsigned int*) ;
 struct aw_gpio_softc* device_get_softc (int ) ;

__attribute__((used)) static int
aw_gpio_pin_get(device_t dev, uint32_t pin, unsigned int *val)
{
 struct aw_gpio_softc *sc;
 int ret;

 sc = device_get_softc(dev);

 AW_GPIO_LOCK(sc);
 ret = aw_gpio_pin_get_locked(sc, pin, val);
 AW_GPIO_UNLOCK(sc);

 return (ret);
}
