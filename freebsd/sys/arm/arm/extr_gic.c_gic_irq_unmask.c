
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct arm_gic_softc {int dummy; } ;


 int GICD_ISENABLER (int ) ;
 int GICD_I_MASK (int ) ;
 int gic_d_write_4 (struct arm_gic_softc*,int ,int ) ;

__attribute__((used)) static inline void
gic_irq_unmask(struct arm_gic_softc *sc, u_int irq)
{

 gic_d_write_4(sc, GICD_ISENABLER(irq), GICD_I_MASK(irq));
}
