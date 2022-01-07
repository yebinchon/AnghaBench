
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intr_irqsrc {int dummy; } ;
struct gic_irqsrc {int gi_flags; int gi_irq; } ;
struct arm_gic_softc {int dummy; } ;
typedef int device_t ;


 int GICC_EOIR ;
 int GI_FLAG_EARLY_EOI ;
 int arm_irq_memory_barrier (int ) ;
 struct arm_gic_softc* device_get_softc (int ) ;
 int gic_c_write_4 (struct arm_gic_softc*,int ,int ) ;

__attribute__((used)) static void
arm_gic_post_filter(device_t dev, struct intr_irqsrc *isrc)
{
 struct arm_gic_softc *sc = device_get_softc(dev);
 struct gic_irqsrc *gi = (struct gic_irqsrc *)isrc;


 if ((gi->gi_flags & GI_FLAG_EARLY_EOI) == GI_FLAG_EARLY_EOI)
  return;

 arm_irq_memory_barrier(0);
 gic_c_write_4(sc, GICC_EOIR, gi->gi_irq);
}
