
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch_tdep {int ppc_gp0_regnum; int ppc_gplast_regnum; int ppc_ps_regnum; int ppc_cr_regnum; int ppc_lr_regnum; int ppc_ctr_regnum; int ppc_xer_regnum; int ppc_fpscr_regnum; int ppc_mq_regnum; } ;


 int FP0_REGNUM ;
 int FPLAST_REGNUM ;
 int PC_REGNUM ;
 int current_gdbarch ;
 struct gdbarch_tdep* gdbarch_tdep (int ) ;
 int store_register (int) ;

void
store_inferior_registers (int regno)
{
  if (regno != -1)
    store_register (regno);

  else
    {
      struct gdbarch_tdep *tdep = gdbarch_tdep (current_gdbarch);


      for (regno = tdep->ppc_gp0_regnum;
           regno <= tdep->ppc_gplast_regnum;
    regno++)
 {
   store_register (regno);
 }


      for (regno = FP0_REGNUM; regno <= FPLAST_REGNUM; regno++)
 store_register (regno);


      store_register (PC_REGNUM);
      store_register (tdep->ppc_ps_regnum);
      store_register (tdep->ppc_cr_regnum);
      store_register (tdep->ppc_lr_regnum);
      store_register (tdep->ppc_ctr_regnum);
      store_register (tdep->ppc_xer_regnum);
      store_register (tdep->ppc_fpscr_regnum);
      if (tdep->ppc_mq_regnum >= 0)
 store_register (tdep->ppc_mq_regnum);
    }
}
