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
typedef  int /*<<< orphan*/  isc_taskaction_t ;
typedef  int /*<<< orphan*/  isc_task_t ;
typedef  int /*<<< orphan*/  isc_result_t ;
typedef  int /*<<< orphan*/  isc_mem_t ;
typedef  int /*<<< orphan*/  isc_event_t ;

/* Variables and functions */
 int /*<<< orphan*/  ISC_APPEVENT_SHUTDOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ISC_R_ALREADYRUNNING ; 
 int /*<<< orphan*/  ISC_R_NOMEMORY ; 
 int /*<<< orphan*/  ISC_R_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ev_link ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  lock ; 
 int /*<<< orphan*/  on_run ; 
 scalar_t__ running ; 

isc_result_t
FUNC5(isc_mem_t *mctx, isc_task_t *task, isc_taskaction_t action,
	      void *arg) {
	isc_event_t *event;
	isc_task_t *cloned_task = NULL;
	isc_result_t result;


	FUNC1(&lock);
	if (running) {
		result = ISC_R_ALREADYRUNNING;
		goto unlock;
	}

	/*
	 * Note that we store the task to which we're going to send the event
	 * in the event's "sender" field.
	 */
	FUNC4(task, &cloned_task);
	event = FUNC3(mctx, cloned_task, ISC_APPEVENT_SHUTDOWN,
				   action, arg, sizeof(*event));
	if (event == NULL) {
		result = ISC_R_NOMEMORY;
		goto unlock;
	}

	FUNC0(on_run, event, ev_link);
	result = ISC_R_SUCCESS;

 unlock:
	FUNC2(&lock);
	return (result);
}