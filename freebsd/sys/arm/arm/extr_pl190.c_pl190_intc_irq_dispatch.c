
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int ;
struct trapframe {int dummy; } ;
struct pl190_intc_softc {int dev; struct pl190_intc_irqsrc* isrcs; } ;
struct pl190_intc_irqsrc {int isrc; } ;


 int device_printf (int ,char*,size_t) ;
 scalar_t__ intr_isrc_dispatch (int *,struct trapframe*) ;

__attribute__((used)) static inline void
pl190_intc_irq_dispatch(struct pl190_intc_softc *sc, u_int irq,
    struct trapframe *tf)
{
 struct pl190_intc_irqsrc *src;

 src = &sc->isrcs[irq];
 if (intr_isrc_dispatch(&src->isrc, tf) != 0)
  device_printf(sc->dev, "Stray irq %u detected\n", irq);
}
