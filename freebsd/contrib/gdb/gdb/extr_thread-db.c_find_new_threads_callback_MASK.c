#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ ti_state; int /*<<< orphan*/  ti_tid; } ;
typedef  TYPE_1__ td_thrinfo_t ;
typedef  int /*<<< orphan*/  td_thrhandle_t ;
typedef  scalar_t__ td_err_e ;
typedef  int /*<<< orphan*/  ptid_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ TD_OK ; 
 scalar_t__ TD_THR_UNKNOWN ; 
 scalar_t__ TD_THR_ZOMBIE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  inferior_ptid ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/  const*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 

__attribute__((used)) static int
FUNC7 (const td_thrhandle_t *th_p, void *data)
{
  td_thrinfo_t ti;
  td_err_e err;
  ptid_t ptid;

  err = FUNC5 (th_p, &ti);
  if (err != TD_OK)
    FUNC3 ("find_new_threads_callback: cannot get thread info: %s",
	   FUNC6 (err));

  if (ti.ti_state == TD_THR_UNKNOWN || ti.ti_state == TD_THR_ZOMBIE)
    return 0;			/* A zombie -- ignore.  */

  ptid = FUNC0 (ti.ti_tid, FUNC1 (inferior_ptid));

  if (!FUNC4 (ptid))
    FUNC2 (ptid, th_p, &ti, 1);

  return 0;
}