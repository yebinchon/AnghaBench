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
struct event {int dummy; } ;
typedef  int /*<<< orphan*/  evutil_socket_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct event*,struct event_base*,int /*<<< orphan*/ ,short,void (*) (int /*<<< orphan*/ ,short,void*),void*) ; 
 int /*<<< orphan*/  FUNC1 (struct event*) ; 
 struct event* FUNC2 (int) ; 

struct event *
FUNC3(struct event_base *base, evutil_socket_t fd, short events, void (*cb)(evutil_socket_t, short, void *), void *arg)
{
	struct event *ev;
	ev = FUNC2(sizeof(struct event));
	if (ev == NULL)
		return (NULL);
	if (FUNC0(ev, base, fd, events, cb, arg) < 0) {
		FUNC1(ev);
		return (NULL);
	}

	return (ev);
}