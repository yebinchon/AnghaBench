#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ ev_type; } ;
typedef  TYPE_1__ isc_event_t ;
typedef  int /*<<< orphan*/  isc_boolean_t ;
struct TYPE_7__ {scalar_t__ state; int /*<<< orphan*/  events; } ;
typedef  TYPE_2__ isc__task_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  ISC_FALSE ; 
 int /*<<< orphan*/  ISC_TRUE ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  ev_link ; 
 scalar_t__ task_state_done ; 
 scalar_t__ task_state_idle ; 
 scalar_t__ task_state_ready ; 
 scalar_t__ task_state_running ; 

__attribute__((used)) static inline isc_boolean_t
FUNC5(isc__task_t *task, isc_event_t **eventp) {
	isc_boolean_t was_idle = ISC_FALSE;
	isc_event_t *event;

	/*
	 * Caller must be holding the task lock.
	 */

	FUNC3(eventp != NULL);
	event = *eventp;
	FUNC3(event != NULL);
	FUNC3(event->ev_type > 0);
	FUNC3(task->state != task_state_done);

	FUNC4("task_send");

	if (task->state == task_state_idle) {
		was_idle = ISC_TRUE;
		FUNC2(FUNC0(task->events));
		task->state = task_state_ready;
	}
	FUNC2(task->state == task_state_ready ||
	       task->state == task_state_running);
	FUNC1(task->events, event, ev_link);
	*eventp = NULL;

	return (was_idle);
}