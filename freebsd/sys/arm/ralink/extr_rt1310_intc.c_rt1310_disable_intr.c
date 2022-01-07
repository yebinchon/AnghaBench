
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
 int RT_INTC_IECR ;
 int RT_INTC_IMR ;
 unsigned int intc_read_4 (struct rt1310_intc_softc*,int ) ;
 struct rt1310_intc_softc* intc_softc ;
 int intc_write_4 (struct rt1310_intc_softc*,int ,int) ;

__attribute__((used)) static void
rt1310_disable_intr(device_t dev, struct intr_irqsrc *isrc)
{
 u_int irq;
 unsigned int value;
 struct rt1310_intc_softc *sc;

 sc = intc_softc;
 irq = ((struct rt1310_irqsrc *)isrc)->ri_irq;


 value = intc_read_4(sc, RT_INTC_IECR);
 value &= ~(1 << irq);
 intc_write_4(sc, RT_INTC_IECR, value);
 intc_write_4(sc, RT_INTC_IMR, value);

 intc_write_4(sc, RT_INTC_ICCR, 1 << irq);
}
