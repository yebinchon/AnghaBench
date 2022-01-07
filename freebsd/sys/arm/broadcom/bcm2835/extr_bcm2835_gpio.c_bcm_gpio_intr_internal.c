
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef int u_int ;
struct bcm_gpio_softc {int sc_dev; struct bcm_gpio_irqsrc* sc_isrcs; } ;
struct bcm_gpio_irqsrc {int bgi_mask; int bgi_isrc; } ;
struct TYPE_2__ {int td_intr_frame; } ;


 int BCM_GPIO_GPEDS (int) ;
 int BCM_GPIO_PINS_PER_BANK ;
 int BCM_GPIO_READ (struct bcm_gpio_softc*,int ) ;
 int FILTER_HANDLED ;
 int bcm_gpio_isrc_eoi (struct bcm_gpio_softc*,struct bcm_gpio_irqsrc*) ;
 scalar_t__ bcm_gpio_isrc_is_level (struct bcm_gpio_irqsrc*) ;
 int bcm_gpio_isrc_mask (struct bcm_gpio_softc*,struct bcm_gpio_irqsrc*) ;
 TYPE_1__* curthread ;
 int device_printf (int ,char*,int) ;
 int ffs (int) ;
 scalar_t__ intr_isrc_dispatch (int *,int ) ;

__attribute__((used)) static int
bcm_gpio_intr_internal(struct bcm_gpio_softc *sc, uint32_t bank)
{
 u_int irq;
 struct bcm_gpio_irqsrc *bgi;
 uint32_t reg;


 reg = BCM_GPIO_READ(sc, BCM_GPIO_GPEDS(bank));
 while (reg != 0) {
  irq = BCM_GPIO_PINS_PER_BANK * bank + ffs(reg) - 1;
  bgi = sc->sc_isrcs + irq;
  if (!bcm_gpio_isrc_is_level(bgi))
   bcm_gpio_isrc_eoi(sc, bgi);
  if (intr_isrc_dispatch(&bgi->bgi_isrc,
      curthread->td_intr_frame) != 0) {
   bcm_gpio_isrc_mask(sc, bgi);
   if (bcm_gpio_isrc_is_level(bgi))
    bcm_gpio_isrc_eoi(sc, bgi);
   device_printf(sc->sc_dev, "Stray irq %u disabled\n",
       irq);
  }
  reg &= ~bgi->bgi_mask;
 }
 return (FILTER_HANDLED);
}
