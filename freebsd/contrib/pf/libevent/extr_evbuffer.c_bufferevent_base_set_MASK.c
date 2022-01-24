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
struct bufferevent {int /*<<< orphan*/  ev_write; int /*<<< orphan*/  ev_read; } ;

/* Variables and functions */
 int FUNC0 (struct event_base*,int /*<<< orphan*/ *) ; 

int
FUNC1(struct event_base *base, struct bufferevent *bufev)
{
	int res;

	res = FUNC0(base, &bufev->ev_read);
	if (res == -1)
		return (res);

	res = FUNC0(base, &bufev->ev_write);
	return (res);
}