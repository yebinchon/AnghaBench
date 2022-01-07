
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint32_t ;
struct mv_gpio_softc {size_t pin_num; TYPE_1__* gpio_setup; } ;
typedef int device_t ;
struct TYPE_2__ {int gp_name; } ;


 int EINVAL ;
 int GPIOMAXNAME ;
 int MV_GPIO_LOCK () ;
 int MV_GPIO_UNLOCK () ;
 struct mv_gpio_softc* device_get_softc (int ) ;
 int memcpy (char*,int ,int ) ;

__attribute__((used)) static int
mv_gpio_pin_getname(device_t dev, uint32_t pin, char *name)
{
 struct mv_gpio_softc *sc = device_get_softc(dev);
 if (name == ((void*)0))
  return (EINVAL);

 if (pin >= sc->pin_num)
  return (EINVAL);

 MV_GPIO_LOCK();
 memcpy(name, sc->gpio_setup[pin].gp_name, GPIOMAXNAME);
 MV_GPIO_UNLOCK();

 return (0);
}
