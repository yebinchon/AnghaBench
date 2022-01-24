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
struct evhttp_request {int fd; struct evhttp_request* conn_address; struct evhttp_request* address; struct evhttp_request* bind_address; int /*<<< orphan*/ * bufev; int /*<<< orphan*/  read_more_deferred_cb; int /*<<< orphan*/  retry_ev; struct evhttp* http_server; int /*<<< orphan*/  requests; int /*<<< orphan*/  closecb_arg; int /*<<< orphan*/  (* closecb ) (struct evhttp_request*,int /*<<< orphan*/ ) ;} ;
struct evhttp_connection {int fd; struct evhttp_connection* conn_address; struct evhttp_connection* address; struct evhttp_connection* bind_address; int /*<<< orphan*/ * bufev; int /*<<< orphan*/  read_more_deferred_cb; int /*<<< orphan*/  retry_ev; struct evhttp* http_server; int /*<<< orphan*/  requests; int /*<<< orphan*/  closecb_arg; int /*<<< orphan*/  (* closecb ) (struct evhttp_request*,int /*<<< orphan*/ ) ;} ;
struct evhttp {int /*<<< orphan*/  connections; } ;

/* Variables and functions */
 int BEV_OPT_CLOSE_ON_FREE ; 
 int /*<<< orphan*/  EVUTIL_SHUT_WR ; 
 struct evhttp_request* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct evhttp_request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (struct evhttp_request*) ; 
 int /*<<< orphan*/  FUNC9 (struct evhttp_request*) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (struct evhttp_request*) ; 
 int /*<<< orphan*/  FUNC12 (struct evhttp_request*) ; 
 int /*<<< orphan*/  next ; 
 int /*<<< orphan*/  FUNC13 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct evhttp_request*,int /*<<< orphan*/ ) ; 

void
FUNC15(struct evhttp_connection *evcon)
{
	struct evhttp_request *req;

	/* notify interested parties that this connection is going down */
	if (evcon->fd != -1) {
		if (FUNC8(evcon) && evcon->closecb != NULL)
			(*evcon->closecb)(evcon, evcon->closecb_arg);
	}

	/* remove all requests that might be queued on this
	 * connection.  for server connections, this should be empty.
	 * because it gets dequeued either in evhttp_connection_done or
	 * evhttp_connection_fail_.
	 */
	while ((req = FUNC0(&evcon->requests)) != NULL) {
		FUNC1(&evcon->requests, req, next);
		FUNC9(req);
	}

	if (evcon->http_server != NULL) {
		struct evhttp *http = evcon->http_server;
		FUNC1(&http->connections, evcon, next);
	}

	if (FUNC7(&evcon->retry_ev)) {
		FUNC6(&evcon->retry_ev);
		FUNC4(&evcon->retry_ev);
	}

	if (evcon->bufev != NULL)
		FUNC2(evcon->bufev);

	FUNC5(FUNC11(evcon),
	    &evcon->read_more_deferred_cb);

	if (evcon->fd != -1) {
		FUNC13(evcon->fd, EVUTIL_SHUT_WR);
		if (!(FUNC3(evcon->bufev) & BEV_OPT_CLOSE_ON_FREE)) {
			FUNC10(evcon->fd);
		}
	}

	if (evcon->bind_address != NULL)
		FUNC12(evcon->bind_address);

	if (evcon->address != NULL)
		FUNC12(evcon->address);

	if (evcon->conn_address != NULL)
		FUNC12(evcon->conn_address);

	FUNC12(evcon);
}