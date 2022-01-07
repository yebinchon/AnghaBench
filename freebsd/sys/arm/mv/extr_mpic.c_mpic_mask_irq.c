
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 uintptr_t ERR_IRQ ;
 scalar_t__ MPIC_CPU (int) ;
 int MPIC_CPU_WRITE (int ,scalar_t__,uintptr_t) ;
 int MPIC_ICE ;
 uintptr_t MPIC_INT_LOCAL ;
 scalar_t__ MPIC_ISM ;
 int MPIC_WRITE (int ,int ,uintptr_t) ;
 uintptr_t MSI_IRQ ;
 int mp_ncpus ;
 scalar_t__ mpic_irq_is_percpu (uintptr_t) ;
 int mpic_mask_irq_err (uintptr_t) ;
 int mv_mpic_sc ;

__attribute__((used)) static void
mpic_mask_irq(uintptr_t nb)
{
 if (mpic_irq_is_percpu(nb))
  MPIC_CPU_WRITE(mv_mpic_sc, MPIC_ISM, nb);
 else if (nb < ERR_IRQ)
  MPIC_WRITE(mv_mpic_sc, MPIC_ICE, nb);
 else if (nb < MSI_IRQ)
  mpic_mask_irq_err(nb);
}
