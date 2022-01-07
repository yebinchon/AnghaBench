
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct trapframe {int dummy; } ;
struct gicv3_its_softc {scalar_t__ sc_irq_base; struct gicv3_its_irqsrc* sc_irqs; } ;
struct gicv3_its_irqsrc {int gi_isrc; } ;
struct TYPE_2__ {struct trapframe* td_intr_frame; } ;


 int FILTER_HANDLED ;
 TYPE_1__* curthread ;
 int intr_isrc_dispatch (int *,struct trapframe*) ;
 int panic (char*,scalar_t__) ;

__attribute__((used)) static int
gicv3_its_intr(void *arg, uintptr_t irq)
{
 struct gicv3_its_softc *sc = arg;
 struct gicv3_its_irqsrc *girq;
 struct trapframe *tf;

 irq -= sc->sc_irq_base;
 girq = &sc->sc_irqs[irq];
 if (girq == ((void*)0))
  panic("gicv3_its_intr: Invalid interrupt %ld",
      irq + sc->sc_irq_base);

 tf = curthread->td_intr_frame;
 intr_isrc_dispatch(&girq->gi_isrc, tf);
 return (FILTER_HANDLED);
}
