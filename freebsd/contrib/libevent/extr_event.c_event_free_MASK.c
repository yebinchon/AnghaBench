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
struct event {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct event*) ; 
 int /*<<< orphan*/  FUNC1 (struct event*) ; 
 int /*<<< orphan*/  FUNC2 (struct event*) ; 

void
FUNC3(struct event *ev)
{
	/* This is disabled, so that events which have been finalized be a
	 * valid target for event_free(). That's */
	// event_debug_assert_is_setup_(ev);

	/* make sure that this event won't be coming back to haunt us. */
	FUNC1(ev);
	FUNC0(ev);
	FUNC2(ev);

}