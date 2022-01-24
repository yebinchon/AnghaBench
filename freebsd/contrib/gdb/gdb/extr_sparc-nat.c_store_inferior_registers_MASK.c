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
typedef  int /*<<< orphan*/  gregset_t ;
typedef  int /*<<< orphan*/  fpregset_t ;
typedef  int /*<<< orphan*/  fpregs ;
typedef  int /*<<< orphan*/  ULONGEST ;
typedef  int /*<<< orphan*/  PTRACE_ARG3_TYPE ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PTRACE_GETFPREGS ; 
 int /*<<< orphan*/  PTRACE_GETREGS ; 
 int /*<<< orphan*/  PTRACE_SETFPREGS ; 
 int /*<<< orphan*/  PTRACE_SETREGS ; 
 int SPARC_I7_REGNUM ; 
 int SPARC_L0_REGNUM ; 
 int SPARC_SP_REGNUM ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 struct regcache* current_regcache ; 
 int /*<<< orphan*/  inferior_ptid ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct regcache*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct regcache*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct regcache*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct regcache*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC10 (int) ; 
 int /*<<< orphan*/  sparc_gregset ; 
 scalar_t__ FUNC11 (int) ; 

void
FUNC12 (int regnum)
{
  struct regcache *regcache = current_regcache;
  int pid;

  /* NOTE: cagney/2002-12-02: See comment in fetch_inferior_registers
     about threaded assumptions.  */
  pid = FUNC1 (inferior_ptid);
  if (pid == 0)
    pid = FUNC0 (inferior_ptid);

  if (regnum == -1 || FUNC11 (regnum))
    {
      gregset_t regs;

      if (FUNC5 (PTRACE_GETREGS, pid, (PTRACE_ARG3_TYPE) &regs, 0) == -1)
	FUNC4 ("Couldn't get registers");

      FUNC8 (sparc_gregset, regcache, regnum, &regs);

      if (FUNC5 (PTRACE_SETREGS, pid, (PTRACE_ARG3_TYPE) &regs, 0) == -1)
	FUNC4 ("Couldn't write registers");

      /* Deal with the stack regs.  */
      if (regnum == -1 || regnum == SPARC_SP_REGNUM
	  || (regnum >= SPARC_L0_REGNUM && regnum <= SPARC_I7_REGNUM))
	{
	  ULONGEST sp;

	  FUNC6 (regcache, SPARC_SP_REGNUM, &sp);
	  FUNC9 (regcache, sp, regnum);
	}

      if (regnum != -1)
	return;
    }

  if (regnum == -1 || FUNC10 (regnum))
    {
      fpregset_t fpregs, saved_fpregs;

      if (FUNC5 (PTRACE_GETFPREGS, pid, (PTRACE_ARG3_TYPE) &fpregs, 0) == -1)
	FUNC4 ("Couldn't get floating-point registers");

      FUNC3 (&saved_fpregs, &fpregs, sizeof (fpregs));
      FUNC7 (regcache, regnum, &fpregs);

      /* Writing the floating-point registers will fail on NetBSD with
	 EINVAL if the inferior process doesn't have an FPU state
	 (i.e. if it didn't use the FPU yet).  Therefore we don't try
	 to write the registers if nothing changed.  */
      if (FUNC2 (&saved_fpregs, &fpregs, sizeof (fpregs)) != 0)
	{
	  if (FUNC5 (PTRACE_SETFPREGS, pid,
		      (PTRACE_ARG3_TYPE) &fpregs, 0) == -1)
	    FUNC4 ("Couldn't write floating-point registers");
	}

      if (regnum != -1)
	return;
    }
}