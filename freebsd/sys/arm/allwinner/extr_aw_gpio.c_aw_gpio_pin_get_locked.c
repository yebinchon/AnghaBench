
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint32_t ;
struct aw_gpio_softc {TYPE_1__* padconf; } ;
struct TYPE_4__ {size_t port; size_t pin; } ;
struct TYPE_3__ {size_t npins; TYPE_2__* pins; } ;


 int AW_GPIO_GP_DAT (size_t) ;
 int AW_GPIO_LOCK_ASSERT (struct aw_gpio_softc*) ;
 size_t AW_GPIO_READ (struct aw_gpio_softc*,int ) ;
 int EINVAL ;

__attribute__((used)) static int
aw_gpio_pin_get_locked(struct aw_gpio_softc *sc,uint32_t pin,
    unsigned int *val)
{
 uint32_t bank, reg_data;

 AW_GPIO_LOCK_ASSERT(sc);

 if (pin > sc->padconf->npins)
  return (EINVAL);

 bank = sc->padconf->pins[pin].port;
 pin = sc->padconf->pins[pin].pin;

 reg_data = AW_GPIO_READ(sc, AW_GPIO_GP_DAT(bank));
 *val = (reg_data & (1 << pin)) ? 1 : 0;

 return (0);
}
