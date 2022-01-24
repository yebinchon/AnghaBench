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
struct event_base {int dummy; } ;
struct bufferevent {int /*<<< orphan*/  ev_write; int /*<<< orphan*/  ev_read; struct event_base* ev_base; int /*<<< orphan*/ * be_ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bufferevent*) ; 
 int /*<<< orphan*/  FUNC1 (struct bufferevent*) ; 
 int /*<<< orphan*/  bufferevent_ops_socket ; 
 int FUNC2 (struct event_base*,int /*<<< orphan*/ *) ; 

int
FUNC3(struct event_base *base, struct bufferevent *bufev)
{
	int res = -1;

	FUNC0(bufev);
	if (bufev->be_ops != &bufferevent_ops_socket)
		goto done;

	bufev->ev_base = base;

	res = FUNC2(base, &bufev->ev_read);
	if (res == -1)
		goto done;

	res = FUNC2(base, &bufev->ev_write);
done:
	FUNC1(bufev);
	return res;
}