#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ ti_state; } ;
typedef  TYPE_1__ td_thrinfo_t ;
typedef  int /*<<< orphan*/  td_thrhandle_t ;
typedef  scalar_t__ td_err_e ;
typedef  int /*<<< orphan*/  ptid_t ;
typedef  scalar_t__ lwpid_t ;
typedef  int /*<<< orphan*/  gregset_t ;
typedef  int /*<<< orphan*/  caddr_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PT_GETREGS ; 
 scalar_t__ TD_OK ; 
 scalar_t__ TD_THR_UNKNOWN ; 
 scalar_t__ TD_THR_ZOMBIE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  core_bfd ; 
 int /*<<< orphan*/  fbsd_core_check_lwp ; 
 scalar_t__ fbsd_thread_active ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  target_has_execution ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  thread_agent ; 

__attribute__((used)) static int
FUNC8 (ptid_t ptid)
{
  td_thrhandle_t th;
  td_thrinfo_t ti;
  td_err_e err;
  gregset_t gregs;
  lwpid_t lwp;

  if (FUNC2 (ptid))
    {
      err = FUNC5 (thread_agent, FUNC1 (ptid), &th);
      if (err != TD_OK)
        return 0;

      err = FUNC7 (&th, &ti);
      if (err != TD_OK)
        return 0;

      /* A zombie thread. */
      if (ti.ti_state == TD_THR_UNKNOWN || ti.ti_state == TD_THR_ZOMBIE)
        return 0;

      return 1;
    }
  else if (FUNC0 (ptid) == 0)
    {
      /* we sometimes are called with lwp == 0 */
      return 1;
    }

  if (fbsd_thread_active)
    {
      err = FUNC6 (thread_agent, FUNC0 (ptid), &th);

      /*
       * if the lwp was already mapped to user thread, don't use it
       * directly, please use user thread id instead.
       */
      if (err == TD_OK)
        return 0;
    }

  if (!target_has_execution)
    {
      lwp = FUNC0 (ptid);
      FUNC3 (core_bfd, fbsd_core_check_lwp, &lwp);
      return (lwp == 0); 
    }

  /* check lwp in kernel */
  return FUNC4 (PT_GETREGS, FUNC0 (ptid), (caddr_t)&gregs, 0) == 0;
}