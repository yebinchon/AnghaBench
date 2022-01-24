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
struct bufferevent {int /*<<< orphan*/  enabled; int /*<<< orphan*/  ev_base; int /*<<< orphan*/  ev_write; int /*<<< orphan*/  ev_read; int /*<<< orphan*/ * be_ops; } ;
typedef  int /*<<< orphan*/  evutil_socket_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bufferevent*) ; 
 int /*<<< orphan*/  FUNC1 (struct bufferevent*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int EV_FINALIZE ; 
 int EV_PERSIST ; 
 int EV_READ ; 
 int EV_WRITE ; 
 int /*<<< orphan*/  FUNC3 (struct bufferevent*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bufferevent_ops_socket ; 
 int /*<<< orphan*/  bufferevent_readcb ; 
 int /*<<< orphan*/  bufferevent_writecb ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct bufferevent*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(struct bufferevent *bufev, evutil_socket_t fd)
{
	FUNC0(bufev);
	FUNC2(bufev->be_ops == &bufferevent_ops_socket);

	FUNC5(&bufev->ev_read);
	FUNC5(&bufev->ev_write);

	FUNC4(&bufev->ev_read, bufev->ev_base, fd,
	    EV_READ|EV_PERSIST|EV_FINALIZE, bufferevent_readcb, bufev);
	FUNC4(&bufev->ev_write, bufev->ev_base, fd,
	    EV_WRITE|EV_PERSIST|EV_FINALIZE, bufferevent_writecb, bufev);

	if (fd >= 0)
		FUNC3(bufev, bufev->enabled);

	FUNC1(bufev);
}