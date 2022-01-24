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
struct evhttp_request {int flags; int /*<<< orphan*/  input_headers; int /*<<< orphan*/  on_complete_cb_arg; int /*<<< orphan*/  (* on_complete_cb ) (struct evhttp_request*,int /*<<< orphan*/ ) ;} ;
struct evhttp_connection {int /*<<< orphan*/  requests; } ;

/* Variables and functions */
 int EVHTTP_REQ_OWN_CONNECTION ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct evhttp_request*,int,int) ; 
 struct evhttp_request* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct evhttp_request*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct evhttp_connection*) ; 
 int /*<<< orphan*/  FUNC5 (struct evhttp_connection*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct evhttp_request*) ; 
 int /*<<< orphan*/  FUNC8 (struct evhttp_request*) ; 
 int /*<<< orphan*/  next ; 
 int /*<<< orphan*/  FUNC9 (struct evhttp_request*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC10(struct evhttp_connection *evcon, void *arg)
{
	int need_close;
	struct evhttp_request *req = FUNC2(&evcon->requests);
	FUNC3(&evcon->requests, req, next);

	if (req->on_complete_cb != NULL) {
		req->on_complete_cb(req, req->on_complete_cb_arg);
	}

	need_close =
	    (FUNC1(req, 1, 1) &&
	    !FUNC6(req->input_headers)) ||
	    FUNC7(req);

	FUNC0(req->flags & EVHTTP_REQ_OWN_CONNECTION);
	FUNC8(req);

	if (need_close) {
		FUNC5(evcon);
		return;
	}

	/* we have a persistent connection; try to accept another request. */
	if (FUNC4(evcon) == -1) {
		FUNC5(evcon);
	}
}