
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rk30_gpio_softc {int dummy; } ;
struct gpio_pin {unsigned int gp_flags; int gp_pin; } ;


 unsigned int GPIO_PIN_INPUT ;
 unsigned int GPIO_PIN_OUTPUT ;
 unsigned int GPIO_PIN_PULLDOWN ;
 unsigned int GPIO_PIN_PULLUP ;
 int RK30_GPIO_LOCK (struct rk30_gpio_softc*) ;
 int RK30_GPIO_UNLOCK (struct rk30_gpio_softc*) ;
 int rk30_gpio_set_function (struct rk30_gpio_softc*,int ,unsigned int) ;
 int rk30_gpio_set_pud (struct rk30_gpio_softc*,int ,unsigned int) ;

__attribute__((used)) static void
rk30_gpio_pin_configure(struct rk30_gpio_softc *sc, struct gpio_pin *pin,
    unsigned int flags)
{

 RK30_GPIO_LOCK(sc);



 if (flags & (GPIO_PIN_INPUT | GPIO_PIN_OUTPUT)) {
  pin->gp_flags &= ~(GPIO_PIN_INPUT | GPIO_PIN_OUTPUT);
  if (flags & GPIO_PIN_OUTPUT)
   pin->gp_flags |= GPIO_PIN_OUTPUT;
  else
   pin->gp_flags |= GPIO_PIN_INPUT;
  rk30_gpio_set_function(sc, pin->gp_pin, pin->gp_flags);
 }

 pin->gp_flags &= ~(GPIO_PIN_PULLUP | GPIO_PIN_PULLDOWN);
 if (flags & (GPIO_PIN_PULLUP | GPIO_PIN_PULLDOWN)) {
  if (flags & GPIO_PIN_PULLUP)
   pin->gp_flags |= GPIO_PIN_PULLUP;
  else
   pin->gp_flags |= GPIO_PIN_PULLDOWN;
 }
 rk30_gpio_set_pud(sc, pin->gp_pin, pin->gp_flags);
 RK30_GPIO_UNLOCK(sc);
}
