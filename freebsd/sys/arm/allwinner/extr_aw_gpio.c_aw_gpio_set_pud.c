
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint32_t ;
struct aw_gpio_softc {TYPE_2__* padconf; } ;
struct TYPE_4__ {TYPE_1__* pins; } ;
struct TYPE_3__ {size_t port; size_t pin; } ;


 int AW_GPIO_GP_PUL (size_t,size_t) ;
 int AW_GPIO_LOCK_ASSERT (struct aw_gpio_softc*) ;
 size_t AW_GPIO_PUD_MASK ;
 size_t AW_GPIO_READ (struct aw_gpio_softc*,int ) ;
 int AW_GPIO_WRITE (struct aw_gpio_softc*,int ,size_t) ;
 size_t aw_gpio_get_pud (struct aw_gpio_softc*,size_t) ;

__attribute__((used)) static void
aw_gpio_set_pud(struct aw_gpio_softc *sc, uint32_t pin, uint32_t state)
{
 uint32_t bank, offset, val;

 if (aw_gpio_get_pud(sc, pin) == state)
  return;


 AW_GPIO_LOCK_ASSERT(sc);

 bank = sc->padconf->pins[pin].port;
 pin = sc->padconf->pins[pin].pin;
 offset = ((pin & 0x0f) << 1);

 val = AW_GPIO_READ(sc, AW_GPIO_GP_PUL(bank, pin >> 4));
 val &= ~(AW_GPIO_PUD_MASK << offset);
 val |= (state << offset);
 AW_GPIO_WRITE(sc, AW_GPIO_GP_PUL(bank, pin >> 4), val);
}
