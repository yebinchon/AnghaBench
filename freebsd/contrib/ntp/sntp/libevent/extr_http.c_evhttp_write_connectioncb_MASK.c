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
struct evhttp_connection {scalar_t__ state; int /*<<< orphan*/  requests; } ;

/* Variables and functions */
 scalar_t__ EVCON_WRITING ; 
 int /*<<< orphan*/  EVHTTP_RESPONSE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct evhttp_request* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct evhttp_connection*) ; 

__attribute__((used)) static void
FUNC3(struct evhttp_connection *evcon, void *arg)
{
	/* This is after writing the request to the server */
	struct evhttp_request *req = FUNC1(&evcon->requests);
	FUNC0(req != NULL);

	FUNC0(evcon->state == EVCON_WRITING);

	/* We are done writing our header and are now expecting the response */
	req->kind = EVHTTP_RESPONSE;

	FUNC2(evcon);
}