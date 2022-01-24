#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ti ;
struct TYPE_11__ {int /*<<< orphan*/  ti_tid; } ;
typedef  TYPE_2__ const td_thrinfo_t ;
typedef  TYPE_2__ td_thrhandle_t ;
typedef  scalar_t__ td_err_e ;
struct thread_info {TYPE_1__* private; } ;
typedef  int /*<<< orphan*/  ptid_t ;
struct TYPE_10__ {int th_valid; int ti_valid; int /*<<< orphan*/  ti; int /*<<< orphan*/  th; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ TD_OK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_2__ const*,TYPE_2__ const*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 struct thread_info* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  inferior_ptid ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_2__ const*,int) ; 
 scalar_t__ FUNC7 (TYPE_2__ const*,TYPE_2__ const*) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 

__attribute__((used)) static int
FUNC9 (const td_thrhandle_t *thp, void *infop)
{
  td_thrinfo_t ti;
  td_err_e err;
  struct thread_info *thread_info;
  ptid_t thread_ptid;

  err = FUNC7 (thp, &ti);
  if (err != TD_OK)
    FUNC3 ("thread_get_info_callback: cannot get thread info: %s",
	   FUNC8 (err));

  /* Fill the cache.  */
  thread_ptid = FUNC0 (ti.ti_tid, FUNC1 (inferior_ptid));
  thread_info = FUNC4 (thread_ptid);

  if (thread_info == NULL)
    {
      /* New thread.  Attach to it now (why wait?).  */
      FUNC2 (thread_ptid, thp, &ti, 1);
      thread_info = FUNC4 (thread_ptid);
      FUNC5 (thread_info != NULL);
    }

  FUNC6 (&thread_info->private->th, thp, sizeof (*thp));
  thread_info->private->th_valid = 1;
  FUNC6 (&thread_info->private->ti, &ti, sizeof (ti));
  thread_info->private->ti_valid = 1;

  if (infop != NULL)
    *(struct thread_info **) infop = thread_info;

  return 0;
}