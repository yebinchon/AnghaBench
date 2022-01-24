#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  (* to_find_new_threads ) () ;} ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TD_SIGNO_MASK ; 
 int /*<<< orphan*/  TD_THR_ANY_STATE ; 
 int /*<<< orphan*/  TD_THR_ANY_USER_FLAGS ; 
 int /*<<< orphan*/  TD_THR_LOWEST_PRIORITY ; 
 int /*<<< orphan*/  inferior_ptid ; 
 int /*<<< orphan*/  main_ta ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 TYPE_1__ procfs_ops ; 
 int /*<<< orphan*/  procfs_suppress_run ; 
 int /*<<< orphan*/  sol_find_new_threads_callback ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static void
FUNC4 (void)
{
  /* don't do anything if init failed to resolve the libthread_db library */
  if (!procfs_suppress_run)
    return;

  if (FUNC0 (inferior_ptid) == -1)
    {
      FUNC2 ("No process.\n");
      return;
    }
  procfs_ops.to_find_new_threads ();	/* first find new kernel threads */
  FUNC1 (main_ta, sol_find_new_threads_callback, (void *) 0,
		    TD_THR_ANY_STATE, TD_THR_LOWEST_PRIORITY,
		    TD_SIGNO_MASK, TD_THR_ANY_USER_FLAGS);
}