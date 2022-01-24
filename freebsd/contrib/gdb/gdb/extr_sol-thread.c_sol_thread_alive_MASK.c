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
typedef  int /*<<< orphan*/  td_thrhandle_t ;
typedef  int /*<<< orphan*/  td_err_e ;
typedef  int /*<<< orphan*/  ptid_t ;
struct TYPE_4__ {int (* to_thread_alive ) (int /*<<< orphan*/ ) ;} ;
struct TYPE_3__ {int (* to_thread_alive ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TD_OK ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  main_ta ; 
 TYPE_2__ orig_core_ops ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_1__ procfs_ops ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ target_has_execution ; 

__attribute__((used)) static int
FUNC6 (ptid_t ptid)
{
  if (FUNC1 (ptid))		/* non-kernel thread */
    {
      td_err_e val;
      td_thrhandle_t th;
      int pid;

      pid = FUNC0 (ptid);
      if ((val = FUNC2 (main_ta, pid, &th)) != TD_OK)
	return 0;		/* thread not found */
      if ((val = FUNC3 (&th)) != TD_OK)
	return 0;		/* thread not valid */
      return 1;			/* known thread: return true */
    }
  else
    /* kernel thread (LWP): let procfs test it */
    {
      if (target_has_execution)
	return procfs_ops.to_thread_alive (ptid);
      else
	return orig_core_ops.to_thread_alive (ptid);
    }
}