
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint32_t ;
struct aw_gpio_softc {TYPE_2__* padconf; } ;
struct TYPE_4__ {size_t npins; TYPE_1__* pins; } ;
struct TYPE_3__ {size_t port; size_t pin; } ;


 int AW_GPIO_GP_CFG (size_t,size_t) ;
 int AW_GPIO_LOCK_ASSERT (struct aw_gpio_softc*) ;
 size_t AW_GPIO_READ (struct aw_gpio_softc*,int ) ;

__attribute__((used)) static uint32_t
aw_gpio_get_function(struct aw_gpio_softc *sc, uint32_t pin)
{
 uint32_t bank, func, offset;


 AW_GPIO_LOCK_ASSERT(sc);

 if (pin > sc->padconf->npins)
  return (0);
 bank = sc->padconf->pins[pin].port;
 pin = sc->padconf->pins[pin].pin;
 offset = ((pin & 0x07) << 2);

 func = AW_GPIO_READ(sc, AW_GPIO_GP_CFG(bank, pin >> 3));

 return ((func >> offset) & 0x7);
}
