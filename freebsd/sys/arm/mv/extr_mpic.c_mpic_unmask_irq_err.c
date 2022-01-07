
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;


 int ERR_IRQ ;
 int MPIC_CPU_READ (int ,int ) ;
 int MPIC_CPU_WRITE (int ,int ,int) ;
 int MPIC_ERR_MASK ;
 int MPIC_ICM ;
 int MPIC_INT_ERR ;
 int MPIC_ISE ;
 int MPIC_WRITE (int ,int ,int) ;
 int mv_mpic_sc ;

__attribute__((used)) static void
mpic_unmask_irq_err(uintptr_t nb)
{
 uint32_t mask;
 uint8_t bit_off;

 MPIC_WRITE(mv_mpic_sc, MPIC_ISE, MPIC_INT_ERR);
 MPIC_CPU_WRITE(mv_mpic_sc, MPIC_ICM, MPIC_INT_ERR);

 bit_off = nb - ERR_IRQ;
 mask = MPIC_CPU_READ(mv_mpic_sc, MPIC_ERR_MASK);
 mask |= (1 << bit_off);
 MPIC_CPU_WRITE(mv_mpic_sc, MPIC_ERR_MASK, mask);
}
