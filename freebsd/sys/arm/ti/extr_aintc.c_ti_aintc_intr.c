
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint32_t ;
struct ti_aintc_softc {int sc_dev; TYPE_1__* aintc_isrcs; } ;
struct TYPE_4__ {int td_intr_frame; } ;
struct TYPE_3__ {int tai_isrc; } ;


 int FILTER_HANDLED ;
 size_t INTC_SIR_ACTIVE_MASK ;
 int INTC_SIR_IRQ ;
 size_t INTC_SIR_SPURIOUS_MASK ;
 size_t aintc_read_4 (struct ti_aintc_softc*,int ) ;
 int arm_irq_memory_barrier (size_t) ;
 TYPE_2__* curthread ;
 int device_printf (int ,char*,size_t) ;
 scalar_t__ intr_isrc_dispatch (int *,int ) ;
 int ti_aintc_irq_eoi (struct ti_aintc_softc*) ;
 int ti_aintc_irq_mask (struct ti_aintc_softc*,size_t) ;

__attribute__((used)) static int
ti_aintc_intr(void *arg)
{
 uint32_t irq;
 struct ti_aintc_softc *sc = arg;


 irq = aintc_read_4(sc, INTC_SIR_IRQ);
 if ((irq & INTC_SIR_SPURIOUS_MASK) != 0) {
  device_printf(sc->sc_dev,
      "Spurious interrupt detected (0x%08x)\n", irq);
  ti_aintc_irq_eoi(sc);
  return (FILTER_HANDLED);
 }


 irq &= INTC_SIR_ACTIVE_MASK;
 if (intr_isrc_dispatch(&sc->aintc_isrcs[irq].tai_isrc,
     curthread->td_intr_frame) != 0) {
  ti_aintc_irq_mask(sc, irq);
  ti_aintc_irq_eoi(sc);
  device_printf(sc->sc_dev, "Stray irq %u disabled\n", irq);
 }

 arm_irq_memory_barrier(irq);
 return (FILTER_HANDLED);
}
