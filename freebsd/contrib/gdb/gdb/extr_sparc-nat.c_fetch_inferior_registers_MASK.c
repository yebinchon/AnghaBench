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
typedef  int /*<<< orphan*/  PTRACE_ARG3_TYPE ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PTRACE_GETFPREGS ; 
 int /*<<< orphan*/  PTRACE_GETREGS ; 
 int SPARC_G0_REGNUM ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 struct regcache* current_regcache ; 
 int /*<<< orphan*/  inferior_ptid ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct regcache*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  sparc_gregset ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct regcache*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct regcache*,int,int /*<<< orphan*/ *) ; 

void
FUNC9 (int regnum)
{
  struct regcache *regcache = current_regcache;
  int pid;

  /* NOTE: cagney/2002-12-03: This code assumes that the currently
     selected light weight processes' registers can be written
     directly into the selected thread's register cache.  This works
     fine when given an 1:1 LWP:thread model (such as found on
     GNU/Linux) but will, likely, have problems when used on an N:1
     (userland threads) or N:M (userland multiple LWP) model.  In the
     case of the latter two, the LWP's registers do not necessarily
     belong to the selected thread (the LWP could be in the middle of
     executing the thread switch code).

     These functions should instead be paramaterized with an explicit
     object (struct regcache, struct thread_info?) into which the LWPs
     registers can be written.  */
  pid = FUNC1 (inferior_ptid);
  if (pid == 0)
    pid = FUNC0 (inferior_ptid);

  if (regnum == SPARC_G0_REGNUM)
    {
      FUNC4 (regcache, SPARC_G0_REGNUM, NULL);
      return;
    }

  if (regnum == -1 || FUNC6 (regnum))
    {
      gregset_t regs;

      if (FUNC3 (PTRACE_GETREGS, pid, (PTRACE_ARG3_TYPE) &regs, 0) == -1)
	FUNC2 ("Couldn't get registers");

      FUNC8 (sparc_gregset, regcache, -1, &regs);
      if (regnum != -1)
	return;
    }

  if (regnum == -1 || FUNC5 (regnum))
    {
      fpregset_t fpregs;

      if (FUNC3 (PTRACE_GETFPREGS, pid, (PTRACE_ARG3_TYPE) &fpregs, 0) == -1)
	FUNC2 ("Couldn't get floating point status");

      FUNC7 (regcache, -1, &fpregs);
    }
}