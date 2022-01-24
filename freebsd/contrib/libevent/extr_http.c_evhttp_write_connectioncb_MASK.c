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
struct evhttp_request {int /*<<< orphan*/  kind; } ;
struct evhttp_connection {scalar_t__ state; int /*<<< orphan*/  bufev; int /*<<< orphan*/  requests; } ;
struct evbuffer {int dummy; } ;

/* Variables and functions */
 scalar_t__ EVCON_WRITING ; 
 int /*<<< orphan*/  EVHTTP_RESPONSE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct evhttp_request* FUNC1 (int /*<<< orphan*/ *) ; 
 struct evbuffer* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct evbuffer*) ; 
 int /*<<< orphan*/  FUNC4 (struct evhttp_connection*) ; 

__attribute__((used)) static void
FUNC5(struct evhttp_connection *evcon, void *arg)
{
	/* This is after writing the request to the server */
	struct evhttp_request *req = FUNC1(&evcon->requests);
	struct evbuffer *output = FUNC2(evcon->bufev);
	FUNC0(req != NULL);

	FUNC0(evcon->state == EVCON_WRITING);

	/* We need to wait until we've written all of our output data before we can
	 * continue */
	if (FUNC3(output) > 0)
		return;

	/* We are done writing our header and are now expecting the response */
	req->kind = EVHTTP_RESPONSE;

	FUNC4(evcon);
}