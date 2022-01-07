
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint32_t ;
struct rk30_gpio_softc {int dummy; } ;


 unsigned int GPIO_PIN_INPUT ;
 unsigned int GPIO_PIN_OUTPUT ;
 unsigned int RK30_GPIO_READ (struct rk30_gpio_softc*,int ) ;
 int RK30_GPIO_SWPORT_DDR ;

__attribute__((used)) static uint32_t
rk30_gpio_get_function(struct rk30_gpio_softc *sc, uint32_t pin)
{

 if (RK30_GPIO_READ(sc, RK30_GPIO_SWPORT_DDR) & (1U << pin))
  return (GPIO_PIN_OUTPUT);
 else
  return (GPIO_PIN_INPUT);
}
