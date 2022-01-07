
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tzic_softc {int dummy; } ;
struct tzic_irqsrc {int irq; } ;
struct intr_irqsrc {int dummy; } ;
typedef int device_t ;


 struct tzic_softc* device_get_softc (int ) ;
 int tzic_irq_eoi (struct tzic_softc*) ;
 int tzic_irq_mask (struct tzic_softc*,int ) ;

__attribute__((used)) static void
tzic_pre_ithread(device_t dev, struct intr_irqsrc *isrc)
{
 struct tzic_softc *sc = device_get_softc(dev);

 tzic_irq_mask(sc, ((struct tzic_irqsrc *)isrc)->irq);
 tzic_irq_eoi(sc);
}
