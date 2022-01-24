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
struct evhttp_request {int userdone; scalar_t__ chunked; struct evhttp_connection* evcon; } ;
struct evhttp_connection {int /*<<< orphan*/ * cb_arg; int /*<<< orphan*/  (* cb ) (struct evhttp_connection*,int /*<<< orphan*/ *) ;int /*<<< orphan*/  bufev; } ;
struct evbuffer {int dummy; } ;

/* Variables and functions */
 struct evbuffer* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct evbuffer*,char*,int) ; 
 scalar_t__ FUNC2 (struct evbuffer*) ; 
 int /*<<< orphan*/  FUNC3 (struct evhttp_request*) ; 
 int /*<<< orphan*/  FUNC4 (struct evhttp_connection*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct evhttp_connection*,int /*<<< orphan*/  (*) (struct evhttp_connection*,int /*<<< orphan*/ *),int /*<<< orphan*/ *) ; 

void
FUNC6(struct evhttp_request *req)
{
	struct evhttp_connection *evcon = req->evcon;
	struct evbuffer *output;

	if (evcon == NULL) {
		FUNC3(req);
		return;
	}

	output = FUNC0(evcon->bufev);

	/* we expect no more calls form the user on this request */
	req->userdone = 1;

	if (req->chunked) {
		FUNC1(output, "0\r\n\r\n", 5);
		FUNC5(req->evcon, evhttp_send_done, NULL);
		req->chunked = 0;
	} else if (FUNC2(output) == 0) {
		/* let the connection know that we are done with the request */
		FUNC4(evcon, NULL);
	} else {
		/* make the callback execute after all data has been written */
		evcon->cb = evhttp_send_done;
		evcon->cb_arg = NULL;
	}
}