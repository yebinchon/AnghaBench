
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_aintc_softc {int dummy; } ;


 int INTC_CONTROL ;
 int aintc_write_4 (struct ti_aintc_softc*,int ,int) ;

__attribute__((used)) static inline void
ti_aintc_irq_eoi(struct ti_aintc_softc *sc)
{

 aintc_write_4(sc, INTC_CONTROL, 1);
}
