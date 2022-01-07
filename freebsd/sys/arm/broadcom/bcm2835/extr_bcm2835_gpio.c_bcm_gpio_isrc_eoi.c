
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct bcm_gpio_softc {int dummy; } ;
struct bcm_gpio_irqsrc {int bgi_mask; int bgi_irq; } ;


 int BCM_GPIO_BANK (int ) ;
 int BCM_GPIO_GPEDS (int ) ;
 int BCM_GPIO_WRITE (struct bcm_gpio_softc*,int ,int ) ;

__attribute__((used)) static inline void
bcm_gpio_isrc_eoi(struct bcm_gpio_softc *sc, struct bcm_gpio_irqsrc *bgi)
{
 uint32_t bank;


 bank = BCM_GPIO_BANK(bgi->bgi_irq);
 BCM_GPIO_WRITE(sc, BCM_GPIO_GPEDS(bank), bgi->bgi_mask);
}
