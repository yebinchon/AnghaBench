
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intr_irqsrc {int dummy; } ;
struct gic_irqsrc {int gi_irq; } ;
struct arm_gic_softc {int dummy; } ;
typedef int device_t ;


 int GICC_EOIR ;
 int arm_gic_disable_intr (int ,struct intr_irqsrc*) ;
 struct arm_gic_softc* device_get_softc (int ) ;
 int gic_c_write_4 (struct arm_gic_softc*,int ,int ) ;

__attribute__((used)) static void
arm_gic_pre_ithread(device_t dev, struct intr_irqsrc *isrc)
{
 struct arm_gic_softc *sc = device_get_softc(dev);
 struct gic_irqsrc *gi = (struct gic_irqsrc *)isrc;

 arm_gic_disable_intr(dev, isrc);
 gic_c_write_4(sc, GICC_EOIR, gi->gi_irq);
}
