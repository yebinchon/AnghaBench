
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct intr_irqsrc {int dummy; } ;
struct a10_intr_irqsrc {int irq; } ;
struct a10_aintc_softc {int dummy; } ;
typedef int device_t ;


 int a10_intr_eoi (struct a10_aintc_softc*,int ) ;
 int a10_intr_mask (struct a10_aintc_softc*,int ) ;
 struct a10_aintc_softc* device_get_softc (int ) ;

__attribute__((used)) static void
a10_intr_pre_ithread(device_t dev, struct intr_irqsrc *isrc)
{
 struct a10_aintc_softc *sc = device_get_softc(dev);
 u_int irq = ((struct a10_intr_irqsrc *)isrc)->irq;

 a10_intr_mask(sc, irq);
 a10_intr_eoi(sc, irq);
}
