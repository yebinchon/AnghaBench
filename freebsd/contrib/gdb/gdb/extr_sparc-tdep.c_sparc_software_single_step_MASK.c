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
struct gdbarch_tdep {int /*<<< orphan*/  npc_regnum; int /*<<< orphan*/  pc_regnum; } ;
typedef  enum target_signal { ____Placeholder_target_signal } target_signal ;
typedef  scalar_t__ CORE_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  current_gdbarch ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct gdbarch_tdep* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (scalar_t__,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,char*) ; 

void
FUNC6 (enum target_signal sig, int insert_breakpoints_p)
{
  struct gdbarch_tdep *tdep = FUNC1 (current_gdbarch);
  static CORE_ADDR npc, nnpc;
  static char npc_save[4], nnpc_save[4];

  if (insert_breakpoints_p)
    {
      CORE_ADDR pc;

      pc = FUNC2 (tdep->pc_regnum);
      npc = FUNC2 (tdep->npc_regnum);

      /* Analyze the instruction at PC.  */
      nnpc = FUNC3 (pc, &npc);
      if (npc != 0)
	FUNC4 (npc, npc_save);
      if (nnpc != 0)
	FUNC4 (nnpc, nnpc_save);

      /* Assert that we have set at least one breakpoint, and that
         they're not set at the same spot.  */
      FUNC0 (npc != 0 || nnpc != 0);
      FUNC0 (nnpc != npc);
    }
  else
    {
      if (npc != 0)
	FUNC5 (npc, npc_save);
      if (nnpc != 0)
	FUNC5 (nnpc, nnpc_save);
    }
}