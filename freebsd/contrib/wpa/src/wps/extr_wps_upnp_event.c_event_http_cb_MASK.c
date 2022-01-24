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
struct subscription {int /*<<< orphan*/  sm; int /*<<< orphan*/  event_queue; int /*<<< orphan*/  last_event_failed; } ;
struct http_client {int dummy; } ;
typedef  enum http_client_event { ____Placeholder_http_client_event } http_client_event ;
struct TYPE_2__ {int /*<<< orphan*/  num_failures; int /*<<< orphan*/  domain_and_port; } ;

/* Variables and functions */
#define  HTTP_CLIENT_FAILED 131 
#define  HTTP_CLIENT_INVALID_REPLY 130 
#define  HTTP_CLIENT_OK 129 
#define  HTTP_CLIENT_TIMEOUT 128 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct wps_event_*) ; 
 int /*<<< orphan*/  FUNC2 (struct wps_event_*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static void FUNC5(void *ctx, struct http_client *c,
			  enum http_client_event event)
{
	struct wps_event_ *e = ctx;
	struct subscription *s = e->s;

	FUNC4(MSG_DEBUG, "WPS UPnP: HTTP client callback: e=%p c=%p "
		   "event=%d", e, c, event);
	switch (event) {
	case HTTP_CLIENT_OK:
		FUNC4(MSG_DEBUG,
			   "WPS UPnP: Got event %p reply OK from %s",
			   e, e->addr->domain_and_port);
		e->addr->num_failures = 0;
		s->last_event_failed = 0;
		FUNC2(e);

		/* Schedule sending more if there is more to send */
		if (!FUNC0(&s->event_queue))
			FUNC3(s->sm);
		break;
	case HTTP_CLIENT_FAILED:
		FUNC4(MSG_DEBUG, "WPS UPnP: Event send failure");
		FUNC1(e);
		break;
	case HTTP_CLIENT_INVALID_REPLY:
		FUNC4(MSG_DEBUG, "WPS UPnP: Invalid reply");
		FUNC1(e);
		break;
	case HTTP_CLIENT_TIMEOUT:
		FUNC4(MSG_DEBUG, "WPS UPnP: Event send timeout");
		FUNC1(e);
		break;
	}
}