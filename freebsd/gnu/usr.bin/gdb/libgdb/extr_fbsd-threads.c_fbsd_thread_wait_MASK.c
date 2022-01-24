#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  td_thrinfo_t ;
typedef  int /*<<< orphan*/  td_thrhandle_t ;
struct TYPE_3__ {scalar_t__ sig; } ;
struct target_waitstatus {scalar_t__ kind; TYPE_1__ value; } ;
typedef  int /*<<< orphan*/  ptid_t ;
struct TYPE_4__ {int /*<<< orphan*/  (* to_wait ) (int /*<<< orphan*/ ,struct target_waitstatus*) ;} ;
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (long,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ TARGET_SIGNAL_TRAP ; 
 scalar_t__ TARGET_WAITKIND_STOPPED ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_2__ child_ops ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 long FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  inferior_ptid ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct target_waitstatus*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static ptid_t
FUNC10 (ptid_t ptid, struct target_waitstatus *ourstatus)
{
  ptid_t ret;
  long lwp;
  CORE_ADDR stop_pc;
  td_thrhandle_t th;
  td_thrinfo_t ti;

  ret = child_ops.to_wait (ptid, ourstatus);
  if (FUNC1(ret) >= 0 && ourstatus->kind == TARGET_WAITKIND_STOPPED)
    {
      lwp = FUNC6 (FUNC1(ret));
      ret = FUNC9 (FUNC0(lwp, FUNC1(ret)),
         &th, &ti);
      if (!FUNC7(ret)) {
        /*
         * We have to enable event reporting for initial thread
         * which was not mapped before.
	 */
        FUNC2(ret, &th, &ti, 1);
      }
      if (ourstatus->value.sig == TARGET_SIGNAL_TRAP)
        FUNC3(ret);
      /* this is a hack, if an event won't cause gdb to stop, for example,
         SIGARLM, gdb resumes the process immediatly without setting
         inferior_ptid to the new thread returned here, this is a bug
         because inferior_ptid may already not exist there, and passing
         a none existing thread to fbsd_thread_resume causes error. */
      if (!FUNC5 (inferior_ptid))
        {
          FUNC4 (inferior_ptid);
          inferior_ptid = ret;
        }
    }

  return (ret);
}