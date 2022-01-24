#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lwpid_t ;
typedef  int /*<<< orphan*/  gregset_t ;
typedef  int /*<<< orphan*/  fpregset_t ;
typedef  char* caddr_t ;
struct TYPE_2__ {int /*<<< orphan*/  (* to_fetch_registers ) (int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PT_GETFPREGS ; 
 int /*<<< orphan*/  PT_GETREGS ; 
 int /*<<< orphan*/  PT_GETXMMREGS ; 
 int /*<<< orphan*/  current_regcache ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  inferior_ptid ; 
 TYPE_1__ orig_core_ops ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  target_has_execution ; 

__attribute__((used)) static void
FUNC8 (int regno)
{
  gregset_t gregs;
  fpregset_t fpregs;
  lwpid_t lwp;
#ifdef PT_GETXMMREGS
  char xmmregs[512];
#endif

  if (!target_has_execution)
    {
      orig_core_ops.to_fetch_registers (-1);
      return;
    }

  /* XXX: We've replaced the pid with the lwpid for GDB's benefit. */
  lwp = FUNC0 (inferior_ptid);

  if (FUNC3 (PT_GETREGS, lwp, (caddr_t) &gregs, 0) == -1)
    FUNC1 ("Cannot get lwp %d registers: %s\n", lwp, FUNC4 (errno));
  FUNC7 (&gregs);
  
#ifdef PT_GETXMMREGS
  if (ptrace (PT_GETXMMREGS, lwp, xmmregs, 0) == 0)
    {
      i387_supply_fxsave (current_regcache, -1, xmmregs);
    }
  else
    {
#endif
      if (FUNC3 (PT_GETFPREGS, lwp, (caddr_t) &fpregs, 0) == -1)
	FUNC1 ("Cannot get lwp %d registers: %s\n ", lwp, FUNC4 (errno));
      FUNC6 (&fpregs);
#ifdef PT_GETXMMREGS
    }
#endif
}