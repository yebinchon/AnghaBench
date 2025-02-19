
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch_tdep {int ppc_gp0_regnum; int ppc_gplast_regnum; int ppc_ps_regnum; int ppc_cr_regnum; int ppc_lr_regnum; int ppc_ctr_regnum; int ppc_xer_regnum; int ppc_fpscr_regnum; int ppc_mq_regnum; } ;


 int FP0_REGNUM ;
 int FPLAST_REGNUM ;
 int PC_REGNUM ;
 int current_gdbarch ;
 int fetch_register (int) ;
 struct gdbarch_tdep* gdbarch_tdep (int ) ;

void
fetch_inferior_registers (int regno)
{
  if (regno != -1)
    fetch_register (regno);

  else
    {
      struct gdbarch_tdep *tdep = gdbarch_tdep (current_gdbarch);


      for (regno = tdep->ppc_gp0_regnum;
           regno <= tdep->ppc_gplast_regnum;
    regno++)
 {
   fetch_register (regno);
 }


      for (regno = FP0_REGNUM; regno <= FPLAST_REGNUM; regno++)
 fetch_register (regno);


      fetch_register (PC_REGNUM);
      fetch_register (tdep->ppc_ps_regnum);
      fetch_register (tdep->ppc_cr_regnum);
      fetch_register (tdep->ppc_lr_regnum);
      fetch_register (tdep->ppc_ctr_regnum);
      fetch_register (tdep->ppc_xer_regnum);
      fetch_register (tdep->ppc_fpscr_regnum);
      if (tdep->ppc_mq_regnum >= 0)
 fetch_register (tdep->ppc_mq_regnum);
    }
}
