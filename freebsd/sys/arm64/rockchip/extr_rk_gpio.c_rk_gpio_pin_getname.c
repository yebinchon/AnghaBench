
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct rk_gpio_softc {int dummy; } ;
typedef int device_t ;


 int EINVAL ;
 int GPIOMAXNAME ;
 int RK_GPIO_LOCK (struct rk_gpio_softc*) ;
 int RK_GPIO_UNLOCK (struct rk_gpio_softc*) ;
 struct rk_gpio_softc* device_get_softc (int ) ;
 int snprintf (char*,int ,char*,int) ;

__attribute__((used)) static int
rk_gpio_pin_getname(device_t dev, uint32_t pin, char *name)
{
 struct rk_gpio_softc *sc;

 sc = device_get_softc(dev);

 if (pin >= 32)
  return (EINVAL);

 RK_GPIO_LOCK(sc);
 snprintf(name, GPIOMAXNAME, "gpio%d", pin);
 RK_GPIO_UNLOCK(sc);

 return (0);
}
