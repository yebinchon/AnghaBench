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
struct TYPE_4__ {scalar_t__ sig; } ;
struct target_waitstatus {scalar_t__ kind; TYPE_1__ value; } ;
typedef  int /*<<< orphan*/  ptid_t ;
struct TYPE_6__ {scalar_t__ pid; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* to_wait ) (int /*<<< orphan*/ ,struct target_waitstatus*) ;} ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ TARGET_SIGNAL_TRAP ; 
 scalar_t__ TARGET_WAITKIND_EXITED ; 
 scalar_t__ TARGET_WAITKIND_STOPPED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  null_ptid ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 TYPE_3__ proc_handle ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct target_waitstatus*) ; 
 TYPE_2__* target_beneath ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static ptid_t
FUNC8 (ptid_t ptid, struct target_waitstatus *ourstatus)
{
  extern ptid_t trap_ptid;

  if (FUNC0 (ptid) != -1 && FUNC2 (ptid))
    ptid = FUNC3 (ptid);

  ptid = target_beneath->to_wait (ptid, ourstatus);

  if (proc_handle.pid == 0)
    /* The current child process isn't the actual multi-threaded
       program yet, so don't try to do any special thread-specific
       post-processing and bail out early.  */
    return ptid;

  if (ourstatus->kind == TARGET_WAITKIND_EXITED)
    return FUNC4 (-1);

  if (ourstatus->kind == TARGET_WAITKIND_STOPPED
      && ourstatus->value.sig == TARGET_SIGNAL_TRAP)
    /* Check for a thread event.  */
    FUNC1 (ptid);

  if (!FUNC5 (trap_ptid, null_ptid))
    trap_ptid = FUNC7 (trap_ptid);

  return FUNC7 (ptid);
}