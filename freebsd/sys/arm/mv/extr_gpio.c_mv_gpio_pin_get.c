
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct mv_gpio_softc {scalar_t__ pin_num; } ;
typedef int device_t ;


 int EINVAL ;
 int MV_GPIO_LOCK () ;
 int MV_GPIO_UNLOCK () ;
 struct mv_gpio_softc* device_get_softc (int ) ;
 unsigned int mv_gpio_in (int ,scalar_t__) ;

__attribute__((used)) static int
mv_gpio_pin_get(device_t dev, uint32_t pin, unsigned int *value)
{
 struct mv_gpio_softc *sc = device_get_softc(dev);
 if (value == ((void*)0))
  return (EINVAL);

 if (pin >= sc->pin_num)
  return (EINVAL);

 MV_GPIO_LOCK();
 *value = mv_gpio_in(dev, pin);
 MV_GPIO_UNLOCK();

 return (0);
}
