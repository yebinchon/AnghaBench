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
struct evhttp_request {int dummy; } ;
struct evhttp_connection {int fd; struct evhttp_connection* address; struct evhttp_connection* bind_address; int /*<<< orphan*/ * bufev; int /*<<< orphan*/  read_more_deferred_cb; int /*<<< orphan*/  retry_ev; struct evhttp* http_server; int /*<<< orphan*/  requests; int /*<<< orphan*/  closecb_arg; int /*<<< orphan*/  (* closecb ) (struct evhttp_connection*,int /*<<< orphan*/ ) ;} ;
struct evhttp {int /*<<< orphan*/  connections; } ;

/* Variables and functions */
 int BEV_OPT_CLOSE_ON_FREE ; 
 int /*<<< orphan*/  EVUTIL_SHUT_WR ; 
 int EV_READ ; 
 int EV_WRITE ; 
 struct evhttp_request* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct evhttp_connection*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (struct evhttp_connection*) ; 
 int /*<<< orphan*/  FUNC11 (struct evhttp_connection*,struct evhttp_request*) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (struct evhttp_connection*) ; 
 int /*<<< orphan*/  FUNC14 (struct evhttp_connection*) ; 
 int /*<<< orphan*/  next ; 
 int /*<<< orphan*/  FUNC15 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct evhttp_connection*,int /*<<< orphan*/ ) ; 

void
FUNC17(struct evhttp_connection *evcon)
{
	struct evhttp_request *req;

	/* notify interested parties that this connection is going down */
	if (evcon->fd != -1) {
		if (FUNC10(evcon) && evcon->closecb != NULL)
			(*evcon->closecb)(evcon, evcon->closecb_arg);
	}

	/* remove all requests that might be queued on this
	 * connection.  for server connections, this should be empty.
	 * because it gets dequeued either in evhttp_connection_done or
	 * evhttp_connection_fail_.
	 */
	while ((req = FUNC0(&evcon->requests)) != NULL) {
		FUNC11(evcon, req);
	}

	if (evcon->http_server != NULL) {
		struct evhttp *http = evcon->http_server;
		FUNC1(&http->connections, evcon, next);
	}

	if (FUNC9(&evcon->retry_ev)) {
		FUNC8(&evcon->retry_ev);
		FUNC6(&evcon->retry_ev);
	}

	if (evcon->bufev != NULL)
		FUNC3(evcon->bufev);

	FUNC7(FUNC13(evcon),
	    &evcon->read_more_deferred_cb);

	if (evcon->fd == -1)
		evcon->fd = FUNC5(evcon->bufev);

	if (evcon->fd != -1) {
		FUNC2(evcon->bufev, EV_READ|EV_WRITE);
		FUNC15(evcon->fd, EVUTIL_SHUT_WR);
		if (!(FUNC4(evcon->bufev) & BEV_OPT_CLOSE_ON_FREE)) {
			FUNC12(evcon->fd);
		}
	}

	if (evcon->bind_address != NULL)
		FUNC14(evcon->bind_address);

	if (evcon->address != NULL)
		FUNC14(evcon->address);

	FUNC14(evcon);
}