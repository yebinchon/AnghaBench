#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct gdbarch_tdep {int ppc_gp0_regnum; int ppc_gplast_regnum; int ppc_ps_regnum; int ppc_cr_regnum; int ppc_lr_regnum; int ppc_ctr_regnum; int ppc_xer_regnum; int ppc_fpscr_regnum; int ppc_mq_regnum; } ;

/* Variables and functions */
 int FP0_REGNUM ; 
 int FPLAST_REGNUM ; 
 int PC_REGNUM ; 
 int /*<<< orphan*/  current_gdbarch ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct gdbarch_tdep* FUNC1 (int /*<<< orphan*/ ) ; 

void
FUNC2 (int regno)
{
  if (regno != -1)
    FUNC0 (regno);

  else
    {
      struct gdbarch_tdep *tdep = FUNC1 (current_gdbarch);

      /* Read 32 general purpose registers.  */
      for (regno = tdep->ppc_gp0_regnum;
           regno <= tdep->ppc_gplast_regnum;
	   regno++)
	{
	  FUNC0 (regno);
	}

      /* Read general purpose floating point registers.  */
      for (regno = FP0_REGNUM; regno <= FPLAST_REGNUM; regno++)
	FUNC0 (regno);

      /* Read special registers.  */
      FUNC0 (PC_REGNUM);
      FUNC0 (tdep->ppc_ps_regnum);
      FUNC0 (tdep->ppc_cr_regnum);
      FUNC0 (tdep->ppc_lr_regnum);
      FUNC0 (tdep->ppc_ctr_regnum);
      FUNC0 (tdep->ppc_xer_regnum);
      FUNC0 (tdep->ppc_fpscr_regnum);
      if (tdep->ppc_mq_regnum >= 0)
	FUNC0 (tdep->ppc_mq_regnum);
    }
}