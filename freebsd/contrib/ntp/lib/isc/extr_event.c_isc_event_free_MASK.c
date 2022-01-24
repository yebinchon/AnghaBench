#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  (* ev_destroy ) (TYPE_1__*) ;} ;
typedef  TYPE_1__ isc_event_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

void
FUNC2(isc_event_t **eventp) {
	isc_event_t *event;

	FUNC0(eventp != NULL);
	event = *eventp;
	FUNC0(event != NULL);

	if (event->ev_destroy != NULL)
		(event->ev_destroy)(event);

	*eventp = NULL;
}