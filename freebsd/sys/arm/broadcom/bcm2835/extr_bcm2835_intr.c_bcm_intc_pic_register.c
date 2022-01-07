
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
struct bcm_intc_softc {int sc_dev; struct bcm_intc_irqsrc* intc_isrcs; } ;
struct bcm_intc_irqsrc {size_t bii_irq; int bii_mask; int bii_isrc; int bii_enable_reg; int bii_disable_reg; } ;


 size_t BCM_INTC_NIRQS ;
 int ENXIO ;
 int INTC_DISABLE_BANK1 ;
 int INTC_DISABLE_BANK2 ;
 int INTC_DISABLE_BASIC ;
 int INTC_ENABLE_BANK1 ;
 int INTC_ENABLE_BANK2 ;
 int INTC_ENABLE_BASIC ;
 int IRQ_BANK1 (size_t) ;
 int IRQ_BANK2 (size_t) ;
 scalar_t__ IS_IRQ_BANK1 (size_t) ;
 scalar_t__ IS_IRQ_BANK2 (size_t) ;
 scalar_t__ IS_IRQ_BASIC (size_t) ;
 char* device_get_nameunit (int ) ;
 int intr_isrc_register (int *,int ,int ,char*,char const*,size_t) ;
 int * intr_pic_register (int ,intptr_t) ;

__attribute__((used)) static int
bcm_intc_pic_register(struct bcm_intc_softc *sc, intptr_t xref)
{
 struct bcm_intc_irqsrc *bii;
 int error;
 uint32_t irq;
 const char *name;

 name = device_get_nameunit(sc->sc_dev);
 for (irq = 0; irq < BCM_INTC_NIRQS; irq++) {
  bii = &sc->intc_isrcs[irq];
  bii->bii_irq = irq;
  if (IS_IRQ_BASIC(irq)) {
   bii->bii_disable_reg = INTC_DISABLE_BASIC;
   bii->bii_enable_reg = INTC_ENABLE_BASIC;
   bii->bii_mask = 1 << irq;
  } else if (IS_IRQ_BANK1(irq)) {
   bii->bii_disable_reg = INTC_DISABLE_BANK1;
   bii->bii_enable_reg = INTC_ENABLE_BANK1;
   bii->bii_mask = 1 << IRQ_BANK1(irq);
  } else if (IS_IRQ_BANK2(irq)) {
   bii->bii_disable_reg = INTC_DISABLE_BANK2;
   bii->bii_enable_reg = INTC_ENABLE_BANK2;
   bii->bii_mask = 1 << IRQ_BANK2(irq);
  } else
   return (ENXIO);

  error = intr_isrc_register(&bii->bii_isrc, sc->sc_dev, 0,
      "%s,%u", name, irq);
  if (error != 0)
   return (error);
 }
 if (intr_pic_register(sc->sc_dev, xref) == ((void*)0))
  return (ENXIO);

 return (0);
}
