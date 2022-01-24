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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ TD_OK ; 
 scalar_t__ TD_THR_UNKNOWN ; 
 scalar_t__ TD_THR_ZOMBIE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ fbsd_thread_core ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/  const*,int) ; 
 char* FUNC7 (scalar_t__) ; 

__attribute__((used)) static void
FUNC8 (ptid_t ptid, const td_thrhandle_t *th_p,
               const td_thrinfo_t *ti_p, int verbose)
{
  td_err_e err;

  /* Add the thread to GDB's thread list.  */
  if (!FUNC3 (ptid)) {
    FUNC1 (ptid);
    if (verbose)
      FUNC4 ("[New %s]\n", FUNC5 (ptid));
  }

  if (ti_p->ti_state == TD_THR_UNKNOWN || ti_p->ti_state == TD_THR_ZOMBIE)
    return;                     /* A zombie thread -- do not attach.  */

  if (! FUNC0(ptid))
    return;
  if (fbsd_thread_core != 0)
    return;
  /* Enable thread event reporting for this thread. */
  err = FUNC6 (th_p, 1);
  if (err != TD_OK)
    FUNC2 ("Cannot enable thread event reporting for %s: %s",
           FUNC5 (ptid), FUNC7 (err));
}