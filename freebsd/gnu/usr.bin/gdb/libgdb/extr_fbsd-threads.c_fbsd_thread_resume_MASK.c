#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {long ti_lid; } ;
typedef  TYPE_1__ td_thrinfo_t ;
typedef  int /*<<< orphan*/  td_thrhandle_t ;
typedef  int /*<<< orphan*/  ptid_t ;
typedef  long pid_t ;
typedef  enum target_signal { ____Placeholder_target_signal } target_signal ;
typedef  int /*<<< orphan*/  caddr_t ;
struct TYPE_7__ {int /*<<< orphan*/  (* to_resume ) (int /*<<< orphan*/ ,int,int) ;} ;
struct TYPE_6__ {long pid; } ;

/* Variables and functions */
 long FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int PT_CLEARSTEP ; 
 int PT_CONTINUE ; 
 int PT_RESUME ; 
 int PT_SETSTEP ; 
 int TD_OK ; 
 int /*<<< orphan*/  TD_SIGNO_MASK ; 
 int /*<<< orphan*/  TD_THR_ANY_STATE ; 
 int /*<<< orphan*/  TD_THR_ANY_USER_FLAGS ; 
 int /*<<< orphan*/  TD_THR_LOWEST_PRIORITY ; 
 TYPE_4__ child_ops ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  fbsd_thread_active ; 
 int /*<<< orphan*/  inferior_ptid ; 
 int /*<<< orphan*/  last_single_step_thread ; 
 int /*<<< orphan*/  null_ptid ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 TYPE_3__ proc_handle ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int,long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  resume_thread_callback ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  suspend_thread_callback ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC13 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  thread_agent ; 
 int /*<<< orphan*/  FUNC14 (int) ; 

__attribute__((used)) static void
FUNC15 (ptid_t ptid, int step, enum target_signal signo)
{
  td_thrhandle_t th;
  td_thrinfo_t ti;
  ptid_t work_ptid;
  int resume_all, ret;
  long lwp, thvalid = 0;

  if (!fbsd_thread_active)
    {
      child_ops.to_resume (ptid, step, signo);
      return;
    }

  if (FUNC1(ptid) != -1 && step != 0)
    {
      resume_all = 0;
      work_ptid = ptid;
    }
  else
    {
      resume_all = 1;
      work_ptid = inferior_ptid;
    }

  lwp = FUNC0 (work_ptid);
  if (lwp == 0)
    {
      /* check user thread */
      ret = FUNC9 (thread_agent, FUNC2(work_ptid), &th);
      if (ret)
        FUNC3 (FUNC14 (ret));

      /* For M:N thread, we need to tell UTS to set/unset single step
         flag at context switch time, the flag will be written into
         thread mailbox. This becauses some architecture may not have
         machine single step flag in ucontext, so we put the flag in mailbox,
         when the thread switches back, kse_switchin restores the single step
         state.  */
      ret = FUNC13 (&th, step);
      if (ret)
        FUNC3 (FUNC14 (ret));
      ret = FUNC12 (&th, &ti);
      if (ret)
        FUNC3 (FUNC14 (ret));
      thvalid = 1;
      lwp = ti.ti_lid;
    }

  if (lwp)
    {
      int req = step ? PT_SETSTEP : PT_CLEARSTEP;
      if (FUNC6 (req, (pid_t) lwp, (caddr_t) 1, FUNC8(signo)))
        FUNC4 ("PT_SETSTEP/PT_CLEARSTEP");
    }

  if (!FUNC5 (last_single_step_thread, null_ptid))
    {
       ret = FUNC10 (thread_agent, resume_thread_callback, NULL,
          TD_THR_ANY_STATE, TD_THR_LOWEST_PRIORITY,
          TD_SIGNO_MASK, TD_THR_ANY_USER_FLAGS);
      if (ret != TD_OK)
        FUNC3 ("resume error: %s", FUNC14 (ret));
    }

  if (!resume_all)
    {
      ret = FUNC10 (thread_agent, suspend_thread_callback, NULL,
          TD_THR_ANY_STATE, TD_THR_LOWEST_PRIORITY,
          TD_SIGNO_MASK, TD_THR_ANY_USER_FLAGS);
      if (ret != TD_OK)
        FUNC3 ("suspend error: %s", FUNC14 (ret));
      last_single_step_thread = work_ptid;
    }
  else
    last_single_step_thread = null_ptid;

  if (thvalid)
    {
      ret = FUNC11 (&th);
      if (ret != TD_OK)
        FUNC3 ("resume error: %s", FUNC14 (ret));
    }
  else
    {
      /* it is not necessary, put it here for completness */
      ret = FUNC6(PT_RESUME, lwp, 0, 0);
    }

  /* now continue the process, suspended thread wont run */
  if (FUNC6 (PT_CONTINUE, proc_handle.pid , (caddr_t)1,
	      FUNC8(signo)))
    FUNC4 ("PT_CONTINUE");
}