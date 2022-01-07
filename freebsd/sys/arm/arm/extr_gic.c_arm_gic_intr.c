
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct trapframe {int dummy; } ;
struct gic_irqsrc {size_t gi_irq; int gi_flags; int gi_isrc; } ;
struct arm_gic_softc {int nirqs; int* last_irq; int gic_dev; struct gic_irqsrc* gic_irqs; } ;
struct TYPE_2__ {struct trapframe* td_intr_frame; } ;


 int FILTER_HANDLED ;
 int GICC_EOIR ;
 int GICC_IAR ;
 int GIC_FIRST_SGI ;
 int GIC_LAST_SGI ;
 int GI_FLAG_EARLY_EOI ;
 size_t PCPU_GET (int ) ;
 int arm_irq_memory_barrier (int) ;
 int cpuid ;
 TYPE_1__* curthread ;
 int device_printf (int ,char*,int,...) ;
 int gic_c_read_4 (struct arm_gic_softc*,int ) ;
 int gic_c_write_4 (struct arm_gic_softc*,int ,int) ;
 scalar_t__ gic_debug_spurious ;
 int gic_irq_mask (struct arm_gic_softc*,int) ;
 int intr_ipi_dispatch (int ,struct trapframe*) ;
 scalar_t__ intr_isrc_dispatch (int *,struct trapframe*) ;
 int * sgi_to_ipi ;

int
arm_gic_intr(void *arg)
{
 struct arm_gic_softc *sc = arg;
 struct gic_irqsrc *gi;
 uint32_t irq_active_reg, irq;
 struct trapframe *tf;

 irq_active_reg = gic_c_read_4(sc, GICC_IAR);
 irq = irq_active_reg & 0x3FF;
 if (irq >= sc->nirqs) {
  if (gic_debug_spurious)
   device_printf(sc->gic_dev,
       "Spurious interrupt detected: last irq: %d on CPU%d\n",
       sc->last_irq[PCPU_GET(cpuid)], PCPU_GET(cpuid));
  return (FILTER_HANDLED);
 }

 tf = curthread->td_intr_frame;
dispatch_irq:
 gi = sc->gic_irqs + irq;




 if (irq <= GIC_LAST_SGI) {






  device_printf(sc->gic_dev, "SGI %u on UP system detected\n",
      irq - GIC_FIRST_SGI);
  gic_c_write_4(sc, GICC_EOIR, irq_active_reg);
  goto next_irq;

 }

 if (gic_debug_spurious)
  sc->last_irq[PCPU_GET(cpuid)] = irq;
 if ((gi->gi_flags & GI_FLAG_EARLY_EOI) == GI_FLAG_EARLY_EOI)
  gic_c_write_4(sc, GICC_EOIR, irq_active_reg);

 if (intr_isrc_dispatch(&gi->gi_isrc, tf) != 0) {
  gic_irq_mask(sc, irq);
  if ((gi->gi_flags & GI_FLAG_EARLY_EOI) != GI_FLAG_EARLY_EOI)
   gic_c_write_4(sc, GICC_EOIR, irq_active_reg);
  device_printf(sc->gic_dev, "Stray irq %u disabled\n", irq);
 }

next_irq:
 arm_irq_memory_barrier(irq);
 irq_active_reg = gic_c_read_4(sc, GICC_IAR);
 irq = irq_active_reg & 0x3FF;
 if (irq < sc->nirqs)
  goto dispatch_irq;

 return (FILTER_HANDLED);
}
