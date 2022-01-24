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
struct evhttp_request {int userdone; int /*<<< orphan*/  output_buffer; struct evhttp_connection* evcon; } ;
struct evhttp_connection {int /*<<< orphan*/  requests; } ;
struct evbuffer {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct evhttp_request* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct evbuffer*) ; 
 int /*<<< orphan*/  FUNC3 (struct evhttp_connection*,struct evhttp_request*) ; 
 int /*<<< orphan*/  FUNC4 (struct evhttp_request*) ; 
 int /*<<< orphan*/  evhttp_send_done ; 
 int /*<<< orphan*/  FUNC5 (struct evhttp_connection*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void
FUNC6(struct evhttp_request *req, struct evbuffer *databuf)
{
	struct evhttp_connection *evcon = req->evcon;

	if (evcon == NULL) {
		FUNC4(req);
		return;
	}

	FUNC0(FUNC1(&evcon->requests) == req);

	/* we expect no more calls form the user on this request */
	req->userdone = 1;

	/* xxx: not sure if we really should expose the data buffer this way */
	if (databuf != NULL)
		FUNC2(req->output_buffer, databuf);

	/* Adds headers to the response */
	FUNC3(evcon, req);

	FUNC5(evcon, evhttp_send_done, NULL);
}