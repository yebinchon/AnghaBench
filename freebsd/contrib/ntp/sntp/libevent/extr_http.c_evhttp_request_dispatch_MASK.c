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
struct evhttp_connection {scalar_t__ state; int /*<<< orphan*/  requests; } ;

/* Variables and functions */
 scalar_t__ EVCON_IDLE ; 
 scalar_t__ EVCON_WRITING ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct evhttp_request* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct evhttp_connection*) ; 
 int /*<<< orphan*/  FUNC3 (struct evhttp_connection*,struct evhttp_request*) ; 
 int /*<<< orphan*/  FUNC4 (struct evhttp_connection*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  evhttp_write_connectioncb ; 

__attribute__((used)) static void
FUNC5(struct evhttp_connection* evcon)
{
	struct evhttp_request *req = FUNC1(&evcon->requests);

	/* this should not usually happy but it's possible */
	if (req == NULL)
		return;

	/* delete possible close detection events */
	FUNC2(evcon);

	/* we assume that the connection is connected already */
	FUNC0(evcon->state == EVCON_IDLE);

	evcon->state = EVCON_WRITING;

	/* Create the header from the store arguments */
	FUNC3(evcon, req);

	FUNC4(evcon, evhttp_write_connectioncb, NULL);
}