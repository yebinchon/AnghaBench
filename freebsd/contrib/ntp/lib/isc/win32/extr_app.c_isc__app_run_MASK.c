#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  isc_task_t ;
typedef  int /*<<< orphan*/  isc_result_t ;
struct TYPE_7__ {int /*<<< orphan*/ * ev_sender; } ;
typedef  TYPE_1__ isc_event_t ;
typedef  int /*<<< orphan*/  HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  INFINITE ; 
 void* ISC_FALSE ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ISC_R_RELOAD ; 
 int /*<<< orphan*/  ISC_R_SUCCESS ; 
 void* ISC_TRUE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  NUM_EVENTS ; 
#define  RELOAD_EVENT 129 
 int /*<<< orphan*/  FUNC5 (int) ; 
#define  SHUTDOWN_EVENT 128 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ blocked ; 
 int /*<<< orphan*/  dwWaitResult ; 
 int /*<<< orphan*/  ev_link ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  hEvents ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ **,TYPE_1__**) ; 
 int /*<<< orphan*/  lock ; 
 scalar_t__ main_thread ; 
 int /*<<< orphan*/  on_run ; 
 void* running ; 
 void* want_reload ; 
 void* want_shutdown ; 

isc_result_t
FUNC12(void) {
	isc_event_t *event, *next_event;
	isc_task_t *task;
	HANDLE *pHandles = NULL;

	FUNC5(main_thread == FUNC0());
	FUNC4(&lock);
	if (!running) {
		running = ISC_TRUE;

		/*
		 * Post any on-run events (in FIFO order).
		 */
		for (event = FUNC1(on_run);
		     event != NULL;
		     event = next_event) {
			next_event = FUNC2(event, ev_link);
			FUNC3(on_run, event, ev_link);
			task = event->ev_sender;
			event->ev_sender = NULL;
			FUNC11(&task, &event);
		}

	}

	FUNC6(&lock);

	/*
	 * There is no danger if isc_app_shutdown() is called before we wait
	 * for events.
	 */

	while (!want_shutdown) {
		dwWaitResult = FUNC7(NUM_EVENTS, hEvents,
						      FALSE, INFINITE);

		/* See why we returned */

		if (FUNC8(dwWaitResult, NUM_EVENTS)) {
			/*
			 * The return was due to one of the events
			 * being signaled
			 */
			switch (FUNC9(dwWaitResult)) {
			case RELOAD_EVENT:
				want_reload = ISC_TRUE;
				break;

			case SHUTDOWN_EVENT:
				want_shutdown = ISC_TRUE;
				break;
			}
		}
		if (want_reload) {
			want_reload = ISC_FALSE;
			return (ISC_R_RELOAD);
		}

		if (want_shutdown && blocked)
			FUNC10(-1);
	}

	return (ISC_R_SUCCESS);
}