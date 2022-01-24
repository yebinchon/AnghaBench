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
struct evhttp_connection {int fd; int /*<<< orphan*/  state; int /*<<< orphan*/  bufev; int /*<<< orphan*/  closecb_arg; int /*<<< orphan*/  (* closecb ) (struct evhttp_connection*,int /*<<< orphan*/ ) ;} ;
struct evbuffer {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EVCON_DISCONNECTED ; 
 int /*<<< orphan*/  EVUTIL_SHUT_WR ; 
 int EV_READ ; 
 int EV_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 struct evbuffer* FUNC1 (int /*<<< orphan*/ ) ; 
 struct evbuffer* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct evbuffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct evbuffer*) ; 
 scalar_t__ FUNC6 (struct evhttp_connection*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct evhttp_connection*,int /*<<< orphan*/ ) ; 

void
FUNC10(struct evhttp_connection *evcon)
{
	struct evbuffer *tmp;

	/* XXXX This is not actually an optimal fix.  Instead we ought to have
	   an API for "stop connecting", or use bufferevent_setfd to turn off
	   connecting.  But for Libevent 2.0, this seems like a minimal change
	   least likely to disrupt the rest of the bufferevent and http code.

	   Why is this here?  If the fd is set in the bufferevent, and the
	   bufferevent is connecting, then you can't actually stop the
	   bufferevent from trying to connect with bufferevent_disable().  The
	   connect will never trigger, since we close the fd, but the timeout
	   might.  That caused an assertion failure in evhttp_connection_fail_.
	*/
	FUNC0(evcon->bufev, EV_READ|EV_WRITE);

	if (evcon->fd != -1) {
		/* inform interested parties about connection close */
		if (FUNC6(evcon) && evcon->closecb != NULL)
			(*evcon->closecb)(evcon, evcon->closecb_arg);

		FUNC8(evcon->fd, EVUTIL_SHUT_WR);
		FUNC7(evcon->fd);
		FUNC3(evcon->bufev, -1);
		evcon->fd = -1;
	}

	/* we need to clean up any buffered data */
	tmp = FUNC2(evcon->bufev);
	FUNC4(tmp, FUNC5(tmp));
	tmp = FUNC1(evcon->bufev);
	FUNC4(tmp, FUNC5(tmp));

	evcon->state = EVCON_DISCONNECTED;
}