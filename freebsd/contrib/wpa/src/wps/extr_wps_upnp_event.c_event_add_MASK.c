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
struct wps_event_ {int /*<<< orphan*/  list; scalar_t__ subscriber_sequence; int /*<<< orphan*/ * data; struct subscription* s; } ;
struct wpabuf {int dummy; } ;
struct subscription {scalar_t__ next_subscriber_sequence; int /*<<< orphan*/  sm; int /*<<< orphan*/  event_queue; scalar_t__ last_event_failed; } ;

/* Variables and functions */
 unsigned int MAX_EVENTS_QUEUED ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct wps_event_*) ; 
 struct wps_event_* FUNC4 (struct subscription*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct wps_event_*) ; 
 struct wps_event_* FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/ * FUNC9 (struct wpabuf const*) ; 

int FUNC10(struct subscription *s, const struct wpabuf *data, int probereq)
{
	struct wps_event_ *e;
	unsigned int len;

	len = FUNC2(&s->event_queue);
	if (len >= MAX_EVENTS_QUEUED) {
		FUNC8(MSG_DEBUG, "WPS UPnP: Too many events queued for "
			   "subscriber %p", s);
		if (probereq)
			return 1;

		/* Drop oldest entry to allow EAP event to be stored. */
		e = FUNC4(s);
		if (!e)
			return 1;
		FUNC3(e);
	}

	if (s->last_event_failed && probereq && len > 0) {
		/*
		 * Avoid queuing frames for subscribers that may have left
		 * without unsubscribing.
		 */
		FUNC8(MSG_DEBUG, "WPS UPnP: Do not queue more Probe "
			   "Request frames for subscription %p since last "
			   "delivery failed", s);
		return -1;
	}

	e = FUNC7(sizeof(*e));
	if (e == NULL)
		return -1;
	FUNC1(&e->list);
	e->s = s;
	e->data = FUNC9(data);
	if (e->data == NULL) {
		FUNC6(e);
		return -1;
	}
	e->subscriber_sequence = s->next_subscriber_sequence++;
	if (s->next_subscriber_sequence == 0)
		s->next_subscriber_sequence++;
	FUNC8(MSG_DEBUG, "WPS UPnP: Queue event %p for subscriber %p "
		   "(queue len %u)", e, s, len + 1);
	FUNC0(&s->event_queue, &e->list);
	FUNC5(s->sm);
	return 0;
}