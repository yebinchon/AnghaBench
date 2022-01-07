
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int uint32_t ;
struct rk30_gpio_softc {int sc_gpio_npins; TYPE_1__* sc_gpio_pins; } ;
typedef int device_t ;
struct TYPE_2__ {unsigned int gp_pin; } ;


 int EINVAL ;
 int RK30_GPIO_LOCK (struct rk30_gpio_softc*) ;
 unsigned int RK30_GPIO_READ (struct rk30_gpio_softc*,int ) ;
 int RK30_GPIO_SWPORT_DR ;
 int RK30_GPIO_UNLOCK (struct rk30_gpio_softc*) ;
 int RK30_GPIO_WRITE (struct rk30_gpio_softc*,int ,unsigned int) ;
 struct rk30_gpio_softc* device_get_softc (int ) ;

__attribute__((used)) static int
rk30_gpio_pin_set(device_t dev, uint32_t pin, unsigned int value)
{
 int i;
 struct rk30_gpio_softc *sc;
 uint32_t data;

  sc = device_get_softc(dev);
 for (i = 0; i < sc->sc_gpio_npins; i++) {
  if (sc->sc_gpio_pins[i].gp_pin == pin)
   break;
 }
 if (i >= sc->sc_gpio_npins)
  return (EINVAL);
 RK30_GPIO_LOCK(sc);
 data = RK30_GPIO_READ(sc, RK30_GPIO_SWPORT_DR);
 if (value)
  data |= (1U << pin);
 else
  data &= ~(1U << pin);
 RK30_GPIO_WRITE(sc, RK30_GPIO_SWPORT_DR, data);
 RK30_GPIO_UNLOCK(sc);

 return (0);
}
