
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct ti_aintc_softc {int dummy; } ;
struct ti_aintc_irqsrc {int tai_irq; } ;
struct intr_irqsrc {int dummy; } ;
typedef int device_t ;


 struct ti_aintc_softc* device_get_softc (int ) ;
 int ti_aintc_irq_eoi (struct ti_aintc_softc*) ;
 int ti_aintc_irq_mask (struct ti_aintc_softc*,int ) ;

__attribute__((used)) static void
ti_aintc_pre_ithread(device_t dev, struct intr_irqsrc *isrc)
{
 u_int irq = ((struct ti_aintc_irqsrc *)isrc)->tai_irq;
 struct ti_aintc_softc *sc = device_get_softc(dev);

 ti_aintc_irq_mask(sc, irq);
 ti_aintc_irq_eoi(sc);
}
