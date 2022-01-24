#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct timeval {scalar_t__ tv_sec; int tv_usec; } ;
struct event_base {int dummy; } ;
struct TYPE_2__ {scalar_t__ tv_sec; int tv_usec; } ;
struct event {TYPE_1__ ev_timeout; } ;
struct common_timeout_list {int /*<<< orphan*/  events; struct event_base* base; } ;
typedef  int /*<<< orphan*/  evutil_socket_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct event_base*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct event_base*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EVENT_DEL_NOBLOCK ; 
 int /*<<< orphan*/  EV_TIMEOUT ; 
 int MICROSECONDS_MASK ; 
 struct event* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct common_timeout_list*,struct timeval*,struct event*) ; 
 int /*<<< orphan*/  FUNC4 (struct event*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct event*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct event_base*,struct timeval*) ; 
 int /*<<< orphan*/  th_base_lock ; 

__attribute__((used)) static void
FUNC7(evutil_socket_t fd, short what, void *arg)
{
	struct timeval now;
	struct common_timeout_list *ctl = arg;
	struct event_base *base = ctl->base;
	struct event *ev = NULL;
	FUNC0(base, th_base_lock);
	FUNC6(base, &now);
	while (1) {
		ev = FUNC2(&ctl->events);
		if (!ev || ev->ev_timeout.tv_sec > now.tv_sec ||
		    (ev->ev_timeout.tv_sec == now.tv_sec &&
			(ev->ev_timeout.tv_usec&MICROSECONDS_MASK) > now.tv_usec))
			break;
		FUNC5(ev, EVENT_DEL_NOBLOCK);
		FUNC4(ev, EV_TIMEOUT, 1);
	}
	if (ev)
		FUNC3(ctl, &now, ev);
	FUNC1(base, th_base_lock);
}