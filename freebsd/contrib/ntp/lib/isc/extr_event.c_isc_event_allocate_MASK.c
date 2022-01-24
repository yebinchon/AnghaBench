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
struct isc_event {int dummy; } ;
typedef  int /*<<< orphan*/ * isc_taskaction_t ;
typedef  int /*<<< orphan*/  isc_mem_t ;
typedef  int /*<<< orphan*/  isc_eventtype_t ;
typedef  int /*<<< orphan*/  isc_event_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void const*,void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  destroy ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,size_t) ; 

isc_event_t *
FUNC4(isc_mem_t *mctx, void *sender, isc_eventtype_t type,
		   isc_taskaction_t action, const void *arg, size_t size)
{
	isc_event_t *event;
	void *deconst_arg;

	FUNC2(size >= sizeof(struct isc_event));
	FUNC2(action != NULL);

	event = FUNC3(mctx, size);
	if (event == NULL)
		return (NULL);

	/*
	 * Removing the const attribute from "arg" is the best of two
	 * evils here.  If the event->ev_arg member is made const, then
	 * it affects a great many users of the task/event subsystem
	 * which are not passing in an "arg" which starts its life as
	 * const.  Changing isc_event_allocate() and isc_task_onshutdown()
	 * to not have "arg" prototyped as const (which is quite legitimate,
	 * because neither of those functions modify arg) can cause
	 * compiler whining anytime someone does want to use a const
	 * arg that they themselves never modify, such as with
	 * gcc -Wwrite-strings and using a string "arg".
	 */
	FUNC0(arg, deconst_arg);

	FUNC1(event, size, 0, NULL, type, action, deconst_arg,
		       sender, destroy, mctx);

	return (event);
}