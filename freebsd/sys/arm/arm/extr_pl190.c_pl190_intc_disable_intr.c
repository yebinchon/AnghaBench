
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pl190_intc_softc {int dummy; } ;
struct pl190_intc_irqsrc {int irq; } ;
struct intr_irqsrc {int dummy; } ;
typedef int device_t ;


 int INTC_VIC_WRITE_4 (struct pl190_intc_softc*,int ,int) ;
 int VICINTENCLEAR ;
 int VIC_LOCK (struct pl190_intc_softc*) ;
 int VIC_UNLOCK (struct pl190_intc_softc*) ;
 struct pl190_intc_softc* device_get_softc (int ) ;

__attribute__((used)) static void
pl190_intc_disable_intr(device_t dev, struct intr_irqsrc *isrc)
{
 struct pl190_intc_softc *sc;
 struct pl190_intc_irqsrc *src;

 sc = device_get_softc(dev);
 src = (struct pl190_intc_irqsrc *)isrc;

 VIC_LOCK(sc);
 INTC_VIC_WRITE_4(sc, VICINTENCLEAR, (1 << src->irq));
 VIC_UNLOCK(sc);
}
