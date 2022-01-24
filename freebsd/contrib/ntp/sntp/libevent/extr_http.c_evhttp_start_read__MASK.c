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
struct evhttp_connection {int /*<<< orphan*/  read_more_deferred_cb; int /*<<< orphan*/  bufev; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  EVCON_READING_FIRSTLINE ; 
 int /*<<< orphan*/  EV_READ ; 
 int /*<<< orphan*/  EV_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct evhttp_connection*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  evhttp_error_cb ; 
 int /*<<< orphan*/  evhttp_read_cb ; 
 int /*<<< orphan*/  evhttp_write_cb ; 
 int /*<<< orphan*/  FUNC6 (struct evhttp_connection*) ; 

void
FUNC7(struct evhttp_connection *evcon)
{
	/* Set up an event to read the headers */
	FUNC0(evcon->bufev, EV_WRITE);
	FUNC1(evcon->bufev, EV_READ);
	evcon->state = EVCON_READING_FIRSTLINE;
	/* Reset the bufferevent callbacks */
	FUNC3(evcon->bufev,
	    evhttp_read_cb,
	    evhttp_write_cb,
	    evhttp_error_cb,
	    evcon);

	/* If there's still data pending, process it next time through the
	 * loop.  Don't do it now; that could get recusive. */
	if (FUNC4(FUNC2(evcon->bufev))) {
		FUNC5(FUNC6(evcon),
		    &evcon->read_more_deferred_cb);
	}
}