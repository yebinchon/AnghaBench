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
struct timeval {int dummy; } ;
struct event_once {void (* cb ) (int /*<<< orphan*/ ,short,void*) ;int /*<<< orphan*/  ev; void* arg; } ;
struct event_base {int /*<<< orphan*/  once_events; } ;
typedef  int /*<<< orphan*/  evutil_socket_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct event_base*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct event_base*,int /*<<< orphan*/ ) ; 
 short EV_CLOSED ; 
 short EV_PERSIST ; 
 short EV_READ ; 
 short EV_SIGNAL ; 
 short EV_TIMEOUT ; 
 short EV_WRITE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct event_once*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,short,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,struct timeval const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct event_base*,int /*<<< orphan*/ ,short,int /*<<< orphan*/ ,struct event_once*) ; 
 int /*<<< orphan*/  event_once_cb ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct event_base*,int /*<<< orphan*/ ,struct event_once*) ; 
 int /*<<< orphan*/  FUNC7 (struct timeval const*) ; 
 struct event_once* FUNC8 (int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct event_once*) ; 
 int /*<<< orphan*/  next_once ; 
 int /*<<< orphan*/  th_base_lock ; 

int
FUNC10(struct event_base *base, evutil_socket_t fd, short events,
    void (*callback)(evutil_socket_t, short, void *),
    void *arg, const struct timeval *tv)
{
	struct event_once *eonce;
	int res = 0;
	int activate = 0;

	/* We cannot support signals that just fire once, or persistent
	 * events. */
	if (events & (EV_SIGNAL|EV_PERSIST))
		return (-1);

	if ((eonce = FUNC8(1, sizeof(struct event_once))) == NULL)
		return (-1);

	eonce->cb = callback;
	eonce->arg = arg;

	if ((events & (EV_TIMEOUT|EV_SIGNAL|EV_READ|EV_WRITE|EV_CLOSED)) == EV_TIMEOUT) {
		FUNC6(&eonce->ev, base, event_once_cb, eonce);

		if (tv == NULL || ! FUNC7(tv)) {
			/* If the event is going to become active immediately,
			 * don't put it on the timeout queue.  This is one
			 * idiom for scheduling a callback, so let's make
			 * it fast (and order-preserving). */
			activate = 1;
		}
	} else if (events & (EV_READ|EV_WRITE|EV_CLOSED)) {
		events &= EV_READ|EV_WRITE|EV_CLOSED;

		FUNC5(&eonce->ev, base, fd, events, event_once_cb, eonce);
	} else {
		/* Bad event combination */
		FUNC9(eonce);
		return (-1);
	}

	if (res == 0) {
		FUNC0(base, th_base_lock);
		if (activate)
			FUNC3(&eonce->ev, EV_TIMEOUT, 1);
		else
			res = FUNC4(&eonce->ev, tv, 0);

		if (res != 0) {
			FUNC9(eonce);
			return (res);
		} else {
			FUNC2(&base->once_events, eonce, next_once);
		}
		FUNC1(base, th_base_lock);
	}

	return (0);
}