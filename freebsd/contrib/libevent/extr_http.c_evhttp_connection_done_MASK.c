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
struct evhttp_request {int /*<<< orphan*/  cb_arg; int /*<<< orphan*/  (* cb ) (struct evhttp_request*,int /*<<< orphan*/ ) ;int /*<<< orphan*/ * evcon; } ;
struct evhttp_connection {int flags; int /*<<< orphan*/  requests; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  EVCON_IDLE ; 
 int /*<<< orphan*/  EVCON_WRITING ; 
 int EVHTTP_CON_AUTOFREE ; 
 int EVHTTP_CON_OUTGOING ; 
 struct evhttp_request* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct evhttp_request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct evhttp_connection*) ; 
 int /*<<< orphan*/  FUNC3 (struct evhttp_connection*) ; 
 int /*<<< orphan*/  FUNC4 (struct evhttp_connection*) ; 
 int /*<<< orphan*/  FUNC5 (struct evhttp_connection*) ; 
 int /*<<< orphan*/  FUNC6 (struct evhttp_connection*) ; 
 int FUNC7 (struct evhttp_request*) ; 
 int /*<<< orphan*/  FUNC8 (struct evhttp_connection*) ; 
 int /*<<< orphan*/  FUNC9 (struct evhttp_request*) ; 
 int /*<<< orphan*/  next ; 
 int /*<<< orphan*/  FUNC10 (struct evhttp_request*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC11(struct evhttp_connection *evcon)
{
	struct evhttp_request *req = FUNC0(&evcon->requests);
	int con_outgoing = evcon->flags & EVHTTP_CON_OUTGOING;
	int free_evcon = 0;

	if (con_outgoing) {
		/* idle or close the connection */
		int need_close = FUNC7(req);
		FUNC1(&evcon->requests, req, next);
		req->evcon = NULL;

		evcon->state = EVCON_IDLE;

		/* check if we got asked to close the connection */
		if (need_close)
			FUNC5(evcon);

		if (FUNC0(&evcon->requests) != NULL) {
			/*
			 * We have more requests; reset the connection
			 * and deal with the next request.
			 */
			if (!FUNC2(evcon))
				FUNC3(evcon);
			else
				FUNC8(evcon);
		} else if (!need_close) {
			/*
			 * The connection is going to be persistent, but we
			 * need to detect if the other side closes it.
			 */
			FUNC6(evcon);
		} else if ((evcon->flags & EVHTTP_CON_AUTOFREE)) {
			/*
			 * If we have no more requests that need completion
			 * and we're not waiting for the connection to close
			 */
			 free_evcon = 1;
		}
	} else {
		/*
		 * incoming connection - we need to leave the request on the
		 * connection so that we can reply to it.
		 */
		evcon->state = EVCON_WRITING;
	}

	/* notify the user of the request */
	(*req->cb)(req, req->cb_arg);

	/* if this was an outgoing request, we own and it's done. so free it. */
	if (con_outgoing) {
		FUNC9(req);
	}

	/* If this was the last request of an outgoing connection and we're
	 * not waiting to receive a connection close event and we want to
	 * automatically free the connection. We check to ensure our request
	 * list is empty one last time just in case our callback added a
	 * new request.
	 */
	if (free_evcon && FUNC0(&evcon->requests) == NULL) {
		FUNC4(evcon);
	}
}