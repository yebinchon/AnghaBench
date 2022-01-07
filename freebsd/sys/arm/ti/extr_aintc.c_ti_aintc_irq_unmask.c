
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct ti_aintc_softc {int dummy; } ;


 int INTC_MIR_CLEAR (int) ;
 int aintc_write_4 (struct ti_aintc_softc*,int ,unsigned long) ;

__attribute__((used)) static inline void
ti_aintc_irq_unmask(struct ti_aintc_softc *sc, u_int irq)
{

 aintc_write_4(sc, INTC_MIR_CLEAR(irq >> 5), (1UL << (irq & 0x1F)));
}
