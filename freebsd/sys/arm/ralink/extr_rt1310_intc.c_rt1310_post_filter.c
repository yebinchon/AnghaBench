
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct rt1310_irqsrc {int ri_irq; } ;
struct rt1310_intc_softc {int dummy; } ;
struct intr_irqsrc {int dummy; } ;
typedef int device_t ;


 int RT_INTC_ICCR ;
 int arm_irq_memory_barrier (int ) ;
 struct rt1310_intc_softc* intc_softc ;
 int intc_write_4 (struct rt1310_intc_softc*,int ,int) ;

__attribute__((used)) static void
rt1310_post_filter(device_t dev, struct intr_irqsrc *isrc)
{
 u_int irq;
 struct rt1310_intc_softc *sc;

 arm_irq_memory_barrier(0);
 sc = intc_softc;
 irq = ((struct rt1310_irqsrc *)isrc)->ri_irq;

    intc_write_4(sc, RT_INTC_ICCR, 1 << irq);
}
