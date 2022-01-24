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
struct wps_event_ {TYPE_1__* addr; struct subscription* s; } ;
struct subscription {int /*<<< orphan*/  list; int /*<<< orphan*/  addr_list; } ;
struct TYPE_2__ {scalar_t__ num_failures; int /*<<< orphan*/  list; int /*<<< orphan*/  domain_and_port; } ;

/* Variables and functions */
 scalar_t__ MAX_FAILURES ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct wps_event_*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (struct subscription*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static void FUNC6(struct wps_event_ *e)
{
	struct subscription *s = e->s;

	e->addr->num_failures++;
	FUNC5(MSG_DEBUG, "WPS UPnP: Failed to send event %p to %s "
		   "(num_failures=%u)",
		   e, e->addr->domain_and_port, e->addr->num_failures);

	if (e->addr->num_failures < MAX_FAILURES) {
		/* Try other addresses, if available */
		FUNC2(e, 1);
		return;
	}

	/*
	 * If other side doesn't like what we say, forget about them.
	 * (There is no way to tell other side that we are dropping them...).
	 */
	FUNC5(MSG_DEBUG, "WPS UPnP: Deleting subscription %p "
		   "address %s due to errors", s, e->addr->domain_and_port);
	FUNC0(&e->addr->list);
	FUNC3(e->addr);
	e->addr = NULL;

	if (FUNC1(&s->addr_list)) {
		/* if we've given up on all addresses */
		FUNC5(MSG_DEBUG, "WPS UPnP: Removing subscription %p "
			   "with no addresses", s);
		FUNC0(&s->list);
		FUNC4(s);
		return;
	}

	/* Try other addresses, if available */
	FUNC2(e, 0);
}