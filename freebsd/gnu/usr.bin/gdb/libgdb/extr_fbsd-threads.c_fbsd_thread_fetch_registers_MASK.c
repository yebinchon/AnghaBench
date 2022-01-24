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
typedef  int /*<<< orphan*/  td_thrhandle_t ;
typedef  scalar_t__ td_err_e ;
typedef  int /*<<< orphan*/  prgregset_t ;
typedef  int /*<<< orphan*/  prfpregset_t ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ TD_OK ; 
 int /*<<< orphan*/  current_regcache ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  inferior_ptid ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  thread_agent ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__) ; 

__attribute__((used)) static void
FUNC13 (int regno)
{
  prgregset_t gregset;
  prfpregset_t fpregset;
  td_thrhandle_t th;
  td_err_e err;
#ifdef PT_GETXMMREGS
  char xmmregs[512];
#endif

  if (!FUNC1 (inferior_ptid))
    {
      FUNC3 (regno);
      return;
    }

  err = FUNC8 (thread_agent, FUNC0 (inferior_ptid), &th);
  if (err != TD_OK)
    FUNC2 ("Cannot find thread %d: Thread ID=%ld, %s",
           FUNC5 (inferior_ptid),           
           FUNC0 (inferior_ptid), FUNC12 (err));

  err = FUNC10 (&th, gregset);
  if (err != TD_OK)
    FUNC2 ("Cannot fetch general-purpose registers for thread %d: Thread ID=%ld, %s",
           FUNC5 (inferior_ptid),
           FUNC0 (inferior_ptid), FUNC12 (err));
#ifdef PT_GETXMMREGS
  err = td_thr_getxmmregs_p (&th, xmmregs);
  if (err == TD_OK)
    {
      i387_supply_fxsave (current_regcache, -1, xmmregs);
    }
  else
    {
#endif
      err = FUNC9 (&th, &fpregset);
      if (err != TD_OK)
	FUNC2 ("Cannot get floating-point registers for thread %d: Thread ID=%ld, %s",
	       FUNC5 (inferior_ptid),
	       FUNC0 (inferior_ptid), FUNC12 (err));
      FUNC6 (&fpregset);
#ifdef PT_GETXMMREGS
    }
#endif

  FUNC7 (gregset);
}