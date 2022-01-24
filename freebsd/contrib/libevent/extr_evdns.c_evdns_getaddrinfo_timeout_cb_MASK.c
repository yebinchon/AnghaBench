#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ r; } ;
struct TYPE_5__ {scalar_t__ r; } ;
struct evdns_getaddrinfo_request {int pending_error; int /*<<< orphan*/  (* user_cb ) (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;int /*<<< orphan*/  user_data; int /*<<< orphan*/ * pending_result; TYPE_3__* evdns_base; TYPE_2__ ipv6_request; TYPE_1__ ipv4_request; } ;
typedef  int /*<<< orphan*/  evutil_socket_t ;
struct TYPE_7__ {int /*<<< orphan*/  getaddrinfo_ipv6_timeouts; int /*<<< orphan*/  getaddrinfo_ipv4_timeouts; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int EVUTIL_EAI_AGAIN ; 
 int /*<<< orphan*/  FUNC3 (struct evdns_getaddrinfo_request*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct evdns_getaddrinfo_request*) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(evutil_socket_t fd, short what, void *ptr)
{
	int v4_timedout = 0, v6_timedout = 0;
	struct evdns_getaddrinfo_request *data = ptr;

	/* Cancel any pending requests, and note which one */
	if (data->ipv4_request.r) {
		/* XXXX This does nothing if the request's callback is already
		 * running (pending_cb is set). */
		FUNC4(NULL, data->ipv4_request.r);
		v4_timedout = 1;
		FUNC0(data->evdns_base);
		++data->evdns_base->getaddrinfo_ipv4_timeouts;
		FUNC1(data->evdns_base);
	}
	if (data->ipv6_request.r) {
		/* XXXX This does nothing if the request's callback is already
		 * running (pending_cb is set). */
		FUNC4(NULL, data->ipv6_request.r);
		v6_timedout = 1;
		FUNC0(data->evdns_base);
		++data->evdns_base->getaddrinfo_ipv6_timeouts;
		FUNC1(data->evdns_base);
	}

	/* We only use this timeout callback when we have an answer for
	 * one address. */
	FUNC2(!v4_timedout || !v6_timedout);

	/* Report the outcome of the other request that didn't time out. */
	if (data->pending_result) {
		FUNC3(data, data->pending_result);
		data->user_cb(0, data->pending_result, data->user_data);
		data->pending_result = NULL;
	} else {
		int e = data->pending_error;
		if (!e)
			e = EVUTIL_EAI_AGAIN;
		data->user_cb(e, NULL, data->user_data);
	}

	data->user_cb = NULL; /* prevent double-call if evdns callbacks are
			       * in-progress. XXXX It would be better if this
			       * weren't necessary. */

	if (!v4_timedout && !v6_timedout) {
		/* should be impossible? XXXX */
		FUNC5(data);
	}
}