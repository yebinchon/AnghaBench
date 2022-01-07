
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct gdbarch_tdep {int ppc_ps_regnum; int ppc_cr_regnum; int ppc_lr_regnum; int ppc_ctr_regnum; int ppc_xer_regnum; int ppc_fpscr_regnum; int ppc_mq_regnum; } ;
struct TYPE_5__ {int mq; int fpscr; int xer; int ctr; int lr; int cr; int msr; int iar; int * fpr; int * gpr; } ;
struct TYPE_4__ {int fpscr; int xer; int ctr; int lr; int cr; int msr; int iar; int * fpr; int * gpr; } ;
struct TYPE_6__ {TYPE_2__ r32; TYPE_1__ r64; } ;
typedef TYPE_3__ CoreRegs ;
typedef int CORE_ADDR ;


 scalar_t__ ARCH64 () ;
 int FP0_REGNUM ;
 int PC_REGNUM ;
 int current_gdbarch ;
 int fprintf_unfiltered (int ,char*) ;
 int gdb_stderr ;
 struct gdbarch_tdep* gdbarch_tdep (int ) ;
 int supply_register (int,char*) ;

__attribute__((used)) static void
fetch_core_registers (char *core_reg_sect, unsigned core_reg_size,
        int which, CORE_ADDR reg_addr)
{
  CoreRegs *regs;
  int regi;
  struct gdbarch_tdep *tdep = gdbarch_tdep (current_gdbarch);

  if (which != 0)
    {
      fprintf_unfiltered
 (gdb_stderr,
  "Gdb error: unknown parameter to fetch_core_registers().\n");
      return;
    }

  regs = (CoreRegs *) core_reg_sect;



  if (ARCH64 ())
    {
      for (regi = 0; regi < 32; regi++)
        supply_register (regi, (char *) &regs->r64.gpr[regi]);

      for (regi = 0; regi < 32; regi++)
 supply_register (FP0_REGNUM + regi, (char *) &regs->r64.fpr[regi]);

      supply_register (PC_REGNUM, (char *) &regs->r64.iar);
      supply_register (tdep->ppc_ps_regnum, (char *) &regs->r64.msr);
      supply_register (tdep->ppc_cr_regnum, (char *) &regs->r64.cr);
      supply_register (tdep->ppc_lr_regnum, (char *) &regs->r64.lr);
      supply_register (tdep->ppc_ctr_regnum, (char *) &regs->r64.ctr);
      supply_register (tdep->ppc_xer_regnum, (char *) &regs->r64.xer);
      supply_register (tdep->ppc_fpscr_regnum, (char *) &regs->r64.fpscr);
    }
  else
    {
      for (regi = 0; regi < 32; regi++)
        supply_register (regi, (char *) &regs->r32.gpr[regi]);

      for (regi = 0; regi < 32; regi++)
 supply_register (FP0_REGNUM + regi, (char *) &regs->r32.fpr[regi]);

      supply_register (PC_REGNUM, (char *) &regs->r32.iar);
      supply_register (tdep->ppc_ps_regnum, (char *) &regs->r32.msr);
      supply_register (tdep->ppc_cr_regnum, (char *) &regs->r32.cr);
      supply_register (tdep->ppc_lr_regnum, (char *) &regs->r32.lr);
      supply_register (tdep->ppc_ctr_regnum, (char *) &regs->r32.ctr);
      supply_register (tdep->ppc_xer_regnum, (char *) &regs->r32.xer);
      supply_register (tdep->ppc_fpscr_regnum, (char *) &regs->r32.fpscr);
      if (tdep->ppc_mq_regnum >= 0)
 supply_register (tdep->ppc_mq_regnum, (char *) &regs->r32.mq);
    }
}
