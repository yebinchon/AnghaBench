
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint32_t ;
struct rt1310_intc_softc {int dev; TYPE_1__* ri_isrcs; } ;
struct TYPE_4__ {int td_intr_frame; } ;
struct TYPE_3__ {int ri_isrc; } ;


 int FILTER_HANDLED ;
 int RT_INTC_ICCR ;
 int RT_INTC_IPR ;
 int arm_irq_memory_barrier (int ) ;
 TYPE_2__* curthread ;
 int device_printf (int ,char*,size_t) ;
 size_t ffs (int ) ;
 int intc_read_4 (struct rt1310_intc_softc*,int ) ;
 int intc_write_4 (struct rt1310_intc_softc*,int ,int) ;
 scalar_t__ intr_isrc_dispatch (int *,int ) ;

__attribute__((used)) static int
rt1310_intr(void *arg)
{
 uint32_t irq;
 struct rt1310_intc_softc *sc = arg;

 irq = ffs(intc_read_4(sc, RT_INTC_IPR)) - 1;

 if (intr_isrc_dispatch(&sc->ri_isrcs[irq].ri_isrc,
     curthread->td_intr_frame) != 0) {
        intc_write_4(sc, RT_INTC_ICCR, 1 << irq);
  device_printf(sc->dev, "Stray irq %u disabled\n", irq);
 }

 arm_irq_memory_barrier(0);

 return (FILTER_HANDLED);
}
