
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct bcm_gpio_softc {int dummy; } ;


 int BCM_GPIO_BANK (int ) ;
 int BCM_GPIO_GPPUD (int ) ;
 int BCM_GPIO_GPPUDCLK (int ) ;
 int BCM_GPIO_LOCK_ASSERT (struct bcm_gpio_softc*) ;
 int BCM_GPIO_MASK (int ) ;
 int BCM_GPIO_WRITE (struct bcm_gpio_softc*,int ,int ) ;

__attribute__((used)) static void
bcm_gpio_set_pud(struct bcm_gpio_softc *sc, uint32_t pin, uint32_t state)
{
 uint32_t bank;


 BCM_GPIO_LOCK_ASSERT(sc);

 bank = BCM_GPIO_BANK(pin);
 BCM_GPIO_WRITE(sc, BCM_GPIO_GPPUD(0), state);
 BCM_GPIO_WRITE(sc, BCM_GPIO_GPPUDCLK(bank), BCM_GPIO_MASK(pin));
 BCM_GPIO_WRITE(sc, BCM_GPIO_GPPUD(0), 0);
 BCM_GPIO_WRITE(sc, BCM_GPIO_GPPUDCLK(bank), 0);
}
