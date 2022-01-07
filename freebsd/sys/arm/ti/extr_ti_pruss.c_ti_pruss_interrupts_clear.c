
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_pruss_softc {int dummy; } ;


 int PRUSS_INTC_GER ;
 int PRUSS_INTC_HIER ;
 int PRUSS_INTC_SECR0 ;
 int PRUSS_INTC_SECR1 ;
 int ti_pruss_reg_write (struct ti_pruss_softc*,int ,int) ;

__attribute__((used)) static __inline void
ti_pruss_interrupts_clear(struct ti_pruss_softc *sc)
{

 ti_pruss_reg_write(sc, PRUSS_INTC_GER, 0 );


 ti_pruss_reg_write(sc, PRUSS_INTC_SECR0, 0xFFFFFFFF);
 ti_pruss_reg_write(sc, PRUSS_INTC_SECR1, 0xFFFFFFFF);


 ti_pruss_reg_write(sc, PRUSS_INTC_HIER, 0);
}
