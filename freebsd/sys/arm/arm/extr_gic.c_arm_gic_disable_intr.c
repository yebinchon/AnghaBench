
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intr_irqsrc {int dummy; } ;
struct gic_irqsrc {int gi_irq; } ;
struct arm_gic_softc {int dummy; } ;
typedef int device_t ;


 struct arm_gic_softc* device_get_softc (int ) ;
 int gic_irq_mask (struct arm_gic_softc*,int ) ;

__attribute__((used)) static void
arm_gic_disable_intr(device_t dev, struct intr_irqsrc *isrc)
{
 struct arm_gic_softc *sc = device_get_softc(dev);
 struct gic_irqsrc *gi = (struct gic_irqsrc *)isrc;

 gic_irq_mask(sc, gi->gi_irq);
}
