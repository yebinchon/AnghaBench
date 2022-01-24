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
typedef  scalar_t__ td_err_e ;
struct thread_info {TYPE_2__* private; } ;
typedef  int /*<<< orphan*/  ptid_t ;
struct TYPE_3__ {int /*<<< orphan*/  ti_tid; } ;
struct TYPE_4__ {TYPE_1__ ti; scalar_t__ ti_valid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ TD_OK ; 
 int /*<<< orphan*/  FUNC4 (char*,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  thread_agent ; 
 char* FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,struct thread_info**) ; 

__attribute__((used)) static ptid_t
FUNC10 (ptid_t ptid)
{
  td_thrhandle_t th;
  td_err_e err;
  struct thread_info *thread_info;
  ptid_t thread_ptid;

  if (FUNC2 (ptid) == 0)
    ptid = FUNC0 (FUNC3 (ptid), FUNC3 (ptid));

  FUNC5 (FUNC6 (ptid));

  err = FUNC7 (thread_agent, FUNC2 (ptid), &th);
  if (err != TD_OK)
    FUNC4 ("Cannot find user-level thread for LWP %ld: %s",
	   FUNC2 (ptid), FUNC8 (err));

  thread_info = NULL;
  FUNC9 (&th, &thread_info);
  FUNC5 (thread_info && thread_info->private->ti_valid);

  return FUNC1 (thread_info->private->ti.ti_tid, FUNC3 (ptid));
}