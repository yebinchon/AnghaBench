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
struct event_once {void (* cb ) (int,short,void*) ;int /*<<< orphan*/  ev; void* arg; } ;

/* Variables and functions */
 short EV_READ ; 
 short EV_SIGNAL ; 
 short EV_TIMEOUT ; 
 short EV_WRITE ; 
 struct event_once* FUNC0 (int,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,struct timeval*) ; 
 int /*<<< orphan*/  event_once_cb ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,short,int /*<<< orphan*/ ,struct event_once*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct event_once*) ; 
 int /*<<< orphan*/  FUNC4 (struct event_once*) ; 
 int /*<<< orphan*/  FUNC5 (struct timeval*) ; 

int
FUNC6(int fd, short events,
    void (*callback)(int, short, void *), void *arg, struct timeval *tv)
{
	struct event_once *eonce;
	struct timeval etv;
	int res;

	/* We cannot support signals that just fire once */
	if (events & EV_SIGNAL)
		return (-1);

	if ((eonce = FUNC0(1, sizeof(struct event_once))) == NULL)
		return (-1);

	eonce->cb = callback;
	eonce->arg = arg;

	if (events == EV_TIMEOUT) {
		if (tv == NULL) {
			FUNC5(&etv);
			tv = &etv;
		}

		FUNC3(&eonce->ev, event_once_cb, eonce);
	} else if (events & (EV_READ|EV_WRITE)) {
		events &= EV_READ|EV_WRITE;

		FUNC2(&eonce->ev, fd, events, event_once_cb, eonce);
	} else {
		/* Bad event combination */
		FUNC4(eonce);
		return (-1);
	}

	res = FUNC1(&eonce->ev, tv);
	if (res != 0) {
		FUNC4(eonce);
		return (res);
	}

	return (0);
}