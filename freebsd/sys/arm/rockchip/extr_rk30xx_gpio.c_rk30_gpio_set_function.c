
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct rk30_gpio_softc {int dummy; } ;


 scalar_t__ GPIO_PIN_OUTPUT ;
 int RK30_GPIO_LOCK_ASSERT (struct rk30_gpio_softc*) ;
 scalar_t__ RK30_GPIO_READ (struct rk30_gpio_softc*,int ) ;
 int RK30_GPIO_SWPORT_DDR ;
 int RK30_GPIO_WRITE (struct rk30_gpio_softc*,int ,scalar_t__) ;

__attribute__((used)) static void
rk30_gpio_set_function(struct rk30_gpio_softc *sc, uint32_t pin, uint32_t func)
{
 uint32_t data;


 RK30_GPIO_LOCK_ASSERT(sc);
 data = RK30_GPIO_READ(sc, RK30_GPIO_SWPORT_DDR);
 if (func == GPIO_PIN_OUTPUT)
  data |= (1U << pin);
 else
  data &= ~(1U << pin);
 RK30_GPIO_WRITE(sc, RK30_GPIO_SWPORT_DDR, data);
}
