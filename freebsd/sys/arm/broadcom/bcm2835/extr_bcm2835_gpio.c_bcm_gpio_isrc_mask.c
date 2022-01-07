
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct bcm_gpio_softc {int dummy; } ;
struct bcm_gpio_irqsrc {int bgi_mode; int bgi_mask; int bgi_irq; } ;


 int BCM_GPIO_BANK (int ) ;
 int BCM_GPIO_CLEAR_BITS (struct bcm_gpio_softc*,int ,int ) ;
 int BCM_GPIO_GPFEN (int ) ;
 int BCM_GPIO_GPHEN (int ) ;
 int BCM_GPIO_GPLEN (int ) ;
 int BCM_GPIO_GPREN (int ) ;
 int BCM_GPIO_LOCK (struct bcm_gpio_softc*) ;
 int BCM_GPIO_UNLOCK (struct bcm_gpio_softc*) ;






__attribute__((used)) static inline void
bcm_gpio_isrc_mask(struct bcm_gpio_softc *sc, struct bcm_gpio_irqsrc *bgi)
{
 uint32_t bank;

 bank = BCM_GPIO_BANK(bgi->bgi_irq);
 BCM_GPIO_LOCK(sc);
 switch (bgi->bgi_mode) {
 case 128:
  BCM_GPIO_CLEAR_BITS(sc, BCM_GPIO_GPLEN(bank), bgi->bgi_mask);
  break;
 case 129:
  BCM_GPIO_CLEAR_BITS(sc, BCM_GPIO_GPHEN(bank), bgi->bgi_mask);
  break;
 case 130:
  BCM_GPIO_CLEAR_BITS(sc, BCM_GPIO_GPREN(bank), bgi->bgi_mask);
  break;
 case 131:
  BCM_GPIO_CLEAR_BITS(sc, BCM_GPIO_GPFEN(bank), bgi->bgi_mask);
  break;
 case 132:
  BCM_GPIO_CLEAR_BITS(sc, BCM_GPIO_GPREN(bank), bgi->bgi_mask);
  BCM_GPIO_CLEAR_BITS(sc, BCM_GPIO_GPFEN(bank), bgi->bgi_mask);
  break;
 }
 BCM_GPIO_UNLOCK(sc);
}
