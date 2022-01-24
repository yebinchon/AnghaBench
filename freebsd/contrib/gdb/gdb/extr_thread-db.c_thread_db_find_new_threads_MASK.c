#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ td_err_e ;

/* Variables and functions */
 scalar_t__ TD_OK ; 
 int /*<<< orphan*/  TD_SIGNO_MASK ; 
 int /*<<< orphan*/  TD_THR_ANY_STATE ; 
 int /*<<< orphan*/  TD_THR_ANY_USER_FLAGS ; 
 int /*<<< orphan*/  TD_THR_LOWEST_PRIORITY ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  find_new_threads_callback ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  thread_agent ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

__attribute__((used)) static void
FUNC3 (void)
{
  td_err_e err;

  /* Iterate over all user-space threads to discover new threads.  */
  err = FUNC1 (thread_agent, find_new_threads_callback, NULL,
			  TD_THR_ANY_STATE, TD_THR_LOWEST_PRIORITY,
			  TD_SIGNO_MASK, TD_THR_ANY_USER_FLAGS);
  if (err != TD_OK)
    FUNC0 ("Cannot find new threads: %s", FUNC2 (err));
}