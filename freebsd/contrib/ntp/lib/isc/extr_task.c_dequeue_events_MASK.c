#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ isc_eventtype_t ;
typedef  int /*<<< orphan*/  isc_eventlist_t ;
struct TYPE_11__ {scalar_t__ ev_type; void* ev_sender; void* ev_tag; } ;
typedef  TYPE_1__ isc_event_t ;
typedef  int /*<<< orphan*/  isc_boolean_t ;
struct TYPE_12__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  events; } ;
typedef  TYPE_2__ isc__task_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  ev_link ; 

__attribute__((used)) static unsigned int
FUNC10(isc__task_t *task, void *sender, isc_eventtype_t first,
	       isc_eventtype_t last, void *tag,
	       isc_eventlist_t *events, isc_boolean_t purging)
{
	isc_event_t *event, *next_event;
	unsigned int count = 0;

	FUNC6(FUNC8(task));
	FUNC6(last >= first);

	FUNC9("dequeue_events");

	/*
	 * Events matching 'sender', whose type is >= first and <= last, and
	 * whose tag is 'tag' will be dequeued.  If 'purging', matching events
	 * which are marked as unpurgable will not be dequeued.
	 *
	 * sender == NULL means "any sender", and tag == NULL means "any tag".
	 */

	FUNC3(&task->lock);

	for (event = FUNC2(task->events); event != NULL; event = next_event) {
		next_event = FUNC4(event, ev_link);
		if (event->ev_type >= first && event->ev_type <= last &&
		    (sender == NULL || event->ev_sender == sender) &&
		    (tag == NULL || event->ev_tag == tag) &&
		    (!purging || FUNC5(event))) {
			FUNC0(task->events, event, ev_link);
			FUNC1(*events, event, ev_link);
			count++;
		}
	}

	FUNC7(&task->lock);

	return (count);
}