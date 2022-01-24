#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  td_thrhandle_t ;
typedef  int /*<<< orphan*/  td_err_e ;
struct thread_info {TYPE_1__* private; } ;
typedef  int /*<<< orphan*/  ptid_t ;
struct TYPE_6__ {int (* to_thread_alive ) (int /*<<< orphan*/ ) ;} ;
struct TYPE_5__ {scalar_t__ ti_state; } ;
struct TYPE_4__ {int ti_valid; TYPE_2__ ti; int /*<<< orphan*/  th; int /*<<< orphan*/  th_valid; } ;

/* Variables and functions */
 int /*<<< orphan*/  TD_OK ; 
 scalar_t__ TD_THR_UNKNOWN ; 
 scalar_t__ TD_THR_ZOMBIE ; 
 struct thread_info* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_3__* target_beneath ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct thread_info*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6 (ptid_t ptid)
{
  td_thrhandle_t th;
  td_err_e err;

  if (FUNC1 (ptid))
    {
      struct thread_info *thread_info;
      thread_info = FUNC0 (ptid);

      FUNC5 (thread_info, 0);
      if (!thread_info->private->th_valid)
	return 0;

      err = FUNC4 (&thread_info->private->th);
      if (err != TD_OK)
	return 0;

      if (!thread_info->private->ti_valid)
	{
	  err =
	    FUNC3 (&thread_info->private->th,
			       &thread_info->private->ti);
	  if (err != TD_OK)
	    return 0;
	  thread_info->private->ti_valid = 1;
	}

      if (thread_info->private->ti.ti_state == TD_THR_UNKNOWN
	  || thread_info->private->ti.ti_state == TD_THR_ZOMBIE)
	return 0;		/* A zombie thread.  */

      return 1;
    }

  if (target_beneath->to_thread_alive)
    return target_beneath->to_thread_alive (ptid);

  return 0;
}