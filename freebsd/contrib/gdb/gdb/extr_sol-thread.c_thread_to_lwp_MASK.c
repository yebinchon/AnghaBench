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
struct TYPE_3__ {scalar_t__ ti_state; int /*<<< orphan*/  ti_lid; } ;
typedef  TYPE_1__ td_thrinfo_t ;
typedef  int /*<<< orphan*/  td_thrhandle_t ;
typedef  scalar_t__ td_err_e ;
typedef  int /*<<< orphan*/  ptid_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ TD_NOTHR ; 
 scalar_t__ TD_OK ; 
 scalar_t__ TD_THR_ACTIVE ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  main_ta ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 

__attribute__((used)) static ptid_t
FUNC10 (ptid_t thread_id, int default_lwp)
{
  td_thrinfo_t ti;
  td_thrhandle_t th;
  td_err_e val;

  if (FUNC4 (thread_id))
    return thread_id;		/* It's already an LWP id */

  /* It's a thread.  Convert to lwp */

  val = FUNC5 (main_ta, FUNC1 (thread_id), &th);
  if (val == TD_NOTHR)
    return FUNC7 (-1);		/* thread must have terminated */
  else if (val != TD_OK)
    FUNC3 ("thread_to_lwp: td_ta_map_id2thr %s", FUNC8 (val));

  val = FUNC6 (&th, &ti);
  if (val == TD_NOTHR)
    return FUNC7 (-1);		/* thread must have terminated */
  else if (val != TD_OK)
    FUNC3 ("thread_to_lwp: td_thr_get_info: %s", FUNC8 (val));

  if (ti.ti_state != TD_THR_ACTIVE)
    {
      if (default_lwp != -1)
	return FUNC7 (default_lwp);
      FUNC3 ("thread_to_lwp: thread state not active: %s",
	     FUNC9 (ti.ti_state));
    }

  return FUNC0 (ti.ti_lid, FUNC2 (thread_id));
}