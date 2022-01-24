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
struct regcache {int dummy; } ;
typedef  int /*<<< orphan*/  ULONGEST ;
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  PTRACE_SETFPREGS ; 
 int /*<<< orphan*/  PTRACE_SETREGS ; 
 int SPARC32_NPC_REGNUM ; 
 int SPARC32_Y_REGNUM ; 
 int SPARC_FPREG_PLEN ; 
 int SPARC_G0_REGNUM ; 
 int SPARC_GREG_PLEN ; 
 int SPARC_I7_REGNUM ; 
 int SPARC_L0_REGNUM ; 
 int SPARC_SP_REGNUM ; 
 struct regcache* current_regcache ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct regcache*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct regcache*,int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct regcache*,int,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct regcache*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ target_has_fp ; 
 int /*<<< orphan*/  vxsparc_gregset ; 

void
FUNC5 (int regnum)
{
  struct regcache *regcache = current_regcache;
  char gregs[SPARC_GREG_PLEN];
  char fpregs[SPARC_FPREG_PLEN];
  int gregs_p = 1;
  int fpregs_p = 1;
  CORE_ADDR sp;

  if (regnum != -1)
    {
      if ((SPARC_G0_REGNUM <= regnum && regnum <= SPARC_I7_REGNUM)
	  || (SPARC32_Y_REGNUM <= regnum && regnum <= SPARC32_NPC_REGNUM))
	fpregs_p = 0;
      else
	gregs_p = 0;
    }

  /* Store the general-purpose registers.  */
  if (gregs_p)
    {
      FUNC3 (&vxsparc_gregset, regcache, -1, gregs);
      FUNC0 (gregs, SPARC_GREG_PLEN, PTRACE_SETREGS);

      /* Deal with the stack regs.  */
      if (regnum == -1 || regnum == SPARC_SP_REGNUM
	  || (regnum >= SPARC_L0_REGNUM && regnum <= SPARC_I7_REGNUM))
	{
	  ULONGEST sp;

	  FUNC1 (regcache, SPARC_SP_REGNUM, &sp);
	  FUNC4 (regcache, sp, regnum);
	}
    }

  /* Store the floating-point registers if the target has them.  */
  if (fpregs_p && target_has_fp)
    {
      FUNC2 (regcache, -1, fpregs);
      FUNC0 (fpregs, SPARC_FPREG_PLEN, PTRACE_SETFPREGS);
    }
}