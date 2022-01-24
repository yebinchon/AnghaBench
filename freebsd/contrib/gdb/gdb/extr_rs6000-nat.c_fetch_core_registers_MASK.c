#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct gdbarch_tdep {int ppc_ps_regnum; int ppc_cr_regnum; int ppc_lr_regnum; int ppc_ctr_regnum; int ppc_xer_regnum; int ppc_fpscr_regnum; int ppc_mq_regnum; } ;
struct TYPE_5__ {int /*<<< orphan*/  mq; int /*<<< orphan*/  fpscr; int /*<<< orphan*/  xer; int /*<<< orphan*/  ctr; int /*<<< orphan*/  lr; int /*<<< orphan*/  cr; int /*<<< orphan*/  msr; int /*<<< orphan*/  iar; int /*<<< orphan*/ * fpr; int /*<<< orphan*/ * gpr; } ;
struct TYPE_4__ {int /*<<< orphan*/  fpscr; int /*<<< orphan*/  xer; int /*<<< orphan*/  ctr; int /*<<< orphan*/  lr; int /*<<< orphan*/  cr; int /*<<< orphan*/  msr; int /*<<< orphan*/  iar; int /*<<< orphan*/ * fpr; int /*<<< orphan*/ * gpr; } ;
struct TYPE_6__ {TYPE_2__ r32; TYPE_1__ r64; } ;
typedef  TYPE_3__ CoreRegs ;
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 int FP0_REGNUM ; 
 int PC_REGNUM ; 
 int /*<<< orphan*/  current_gdbarch ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  gdb_stderr ; 
 struct gdbarch_tdep* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 

__attribute__((used)) static void
FUNC4 (char *core_reg_sect, unsigned core_reg_size,
		      int which, CORE_ADDR reg_addr)
{
  CoreRegs *regs;
  int regi;
  struct gdbarch_tdep *tdep = FUNC2 (current_gdbarch); 

  if (which != 0)
    {
      FUNC1
	(gdb_stderr,
	 "Gdb error: unknown parameter to fetch_core_registers().\n");
      return;
    }

  regs = (CoreRegs *) core_reg_sect;

  /* Put the register values from the core file section in the regcache.  */

  if (FUNC0 ())
    {
      for (regi = 0; regi < 32; regi++)
        FUNC3 (regi, (char *) &regs->r64.gpr[regi]);

      for (regi = 0; regi < 32; regi++)
	FUNC3 (FP0_REGNUM + regi, (char *) &regs->r64.fpr[regi]);

      FUNC3 (PC_REGNUM, (char *) &regs->r64.iar);
      FUNC3 (tdep->ppc_ps_regnum, (char *) &regs->r64.msr);
      FUNC3 (tdep->ppc_cr_regnum, (char *) &regs->r64.cr);
      FUNC3 (tdep->ppc_lr_regnum, (char *) &regs->r64.lr);
      FUNC3 (tdep->ppc_ctr_regnum, (char *) &regs->r64.ctr);
      FUNC3 (tdep->ppc_xer_regnum, (char *) &regs->r64.xer);
      FUNC3 (tdep->ppc_fpscr_regnum, (char *) &regs->r64.fpscr);
    }
  else
    {
      for (regi = 0; regi < 32; regi++)
        FUNC3 (regi, (char *) &regs->r32.gpr[regi]);

      for (regi = 0; regi < 32; regi++)
	FUNC3 (FP0_REGNUM + regi, (char *) &regs->r32.fpr[regi]);

      FUNC3 (PC_REGNUM, (char *) &regs->r32.iar);
      FUNC3 (tdep->ppc_ps_regnum, (char *) &regs->r32.msr);
      FUNC3 (tdep->ppc_cr_regnum, (char *) &regs->r32.cr);
      FUNC3 (tdep->ppc_lr_regnum, (char *) &regs->r32.lr);
      FUNC3 (tdep->ppc_ctr_regnum, (char *) &regs->r32.ctr);
      FUNC3 (tdep->ppc_xer_regnum, (char *) &regs->r32.xer);
      FUNC3 (tdep->ppc_fpscr_regnum, (char *) &regs->r32.fpscr);
      if (tdep->ppc_mq_regnum >= 0)
	FUNC3 (tdep->ppc_mq_regnum, (char *) &regs->r32.mq);
    }
}