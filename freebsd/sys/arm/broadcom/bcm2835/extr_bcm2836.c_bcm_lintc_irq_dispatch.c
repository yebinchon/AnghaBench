
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int ;
struct trapframe {int dummy; } ;
struct bcm_lintc_softc {int bls_dev; struct bcm_lintc_irqsrc* bls_isrcs; } ;
struct bcm_lintc_irqsrc {int bli_isrc; } ;


 int device_printf (int ,char*,size_t) ;
 scalar_t__ intr_isrc_dispatch (int *,struct trapframe*) ;

__attribute__((used)) static inline void
bcm_lintc_irq_dispatch(struct bcm_lintc_softc *sc, u_int irq,
    struct trapframe *tf)
{
 struct bcm_lintc_irqsrc *bli;

 bli = &sc->bls_isrcs[irq];
 if (intr_isrc_dispatch(&bli->bli_isrc, tf) != 0)
  device_printf(sc->bls_dev, "Stray irq %u detected\n", irq);
}
