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
struct wps_event_ {int /*<<< orphan*/  list; TYPE_1__* addr; int /*<<< orphan*/  retry; struct subscription* s; } ;
struct upnp_wps_device_sm {int dummy; } ;
struct subscription {int last_event_failed; int /*<<< orphan*/  event_queue; struct upnp_wps_device_sm* sm; int /*<<< orphan*/  addr_list; } ;
struct TYPE_2__ {int /*<<< orphan*/  domain_and_port; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct wps_event_*) ; 
 int /*<<< orphan*/  FUNC4 (struct wps_event_*) ; 
 int /*<<< orphan*/  FUNC5 (struct upnp_wps_device_sm*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,struct wps_event_*,...) ; 

__attribute__((used)) static void FUNC7(struct wps_event_ *e, int do_next_address)
{
	struct subscription *s = e->s;
	struct upnp_wps_device_sm *sm = s->sm;

	FUNC6(MSG_DEBUG, "WPS UPnP: Retry event %p for subscription %p",
		   e, s);
	FUNC3(e);
	/* will set: s->current_event = NULL; */

	if (do_next_address) {
		e->retry++;
		FUNC6(MSG_DEBUG, "WPS UPnP: Try address %d", e->retry);
	}
	if (e->retry >= FUNC2(&s->addr_list)) {
		FUNC6(MSG_DEBUG, "WPS UPnP: Giving up on sending event "
			   "for %s", e->addr->domain_and_port);
		FUNC4(e);
		s->last_event_failed = 1;
		if (!FUNC1(&s->event_queue))
			FUNC5(s->sm);
		return;
	}
	FUNC0(&s->event_queue, &e->list);
	FUNC5(sm);
}