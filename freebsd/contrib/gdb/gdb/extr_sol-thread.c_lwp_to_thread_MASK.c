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
struct TYPE_3__ {int /*<<< orphan*/  ti_tid; } ;
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
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  main_ta ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 

__attribute__((used)) static ptid_t
FUNC11 (ptid_t lwp)
{
  td_thrinfo_t ti;
  td_thrhandle_t th;
  td_err_e val;

  if (FUNC4 (lwp))
    return lwp;			/* It's already a thread id */

  /* It's an lwp.  Convert it to a thread id.  */

  if (!FUNC9 (lwp))
    return FUNC8 (-1);	/* defunct lwp */

  val = FUNC5 (main_ta, FUNC1 (lwp), &th);
  if (val == TD_NOTHR)
    return FUNC8 (-1);	/* thread must have terminated */
  else if (val != TD_OK)
    FUNC3 ("lwp_to_thread: td_ta_map_lwp2thr: %s.", FUNC10 (val));

  val = FUNC7 (&th);
  if (val == TD_NOTHR)
    return lwp;			/* libthread doesn't know about it;
				   just return lwp */
  else if (val != TD_OK)
    FUNC3 ("lwp_to_thread: td_thr_validate: %s.", FUNC10 (val));

  val = FUNC6 (&th, &ti);
  if (val == TD_NOTHR)
    return FUNC8 (-1);	/* thread must have terminated */
  else if (val != TD_OK)
    FUNC3 ("lwp_to_thread: td_thr_get_info: %s.", FUNC10 (val));

  return FUNC0 (ti.ti_tid, FUNC2 (lwp));
}