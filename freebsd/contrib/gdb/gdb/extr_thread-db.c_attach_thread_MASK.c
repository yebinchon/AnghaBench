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
struct thread_info {int /*<<< orphan*/  private; } ;
struct private_thread_info {int dummy; } ;
typedef  int /*<<< orphan*/  ptid_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ TD_OK ; 
 scalar_t__ TD_THR_UNKNOWN ; 
 scalar_t__ TD_THR_ZOMBIE ; 
 struct thread_info* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/  const*,int) ; 
 char* FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 

__attribute__((used)) static void
FUNC12 (ptid_t ptid, const td_thrhandle_t *th_p,
	       const td_thrinfo_t *ti_p, int verbose)
{
  struct thread_info *tp;
  td_err_e err;

  FUNC4 ();

  /* Add the thread to GDB's thread list.  */
  tp = FUNC3 (ptid);
  tp->private = FUNC11 (sizeof (struct private_thread_info));
  FUNC6 (tp->private, 0, sizeof (struct private_thread_info));

  if (verbose)
    FUNC7 ("[New %s]\n", FUNC8 (ptid));

  if (ti_p->ti_state == TD_THR_UNKNOWN || ti_p->ti_state == TD_THR_ZOMBIE)
    return;			/* A zombie thread -- do not attach.  */

  /* Under GNU/Linux, we have to attach to each and every thread.  */
#ifdef ATTACH_LWP
  ATTACH_LWP (BUILD_LWP (ti_p->ti_lid, GET_PID (ptid)), 0);
#endif

  /* Enable thread event reporting for this thread.  */
  err = FUNC9 (th_p, 1);
  if (err != TD_OK)
    FUNC5 ("Cannot enable thread event reporting for %s: %s",
	   FUNC8 (ptid), FUNC10 (err));
}