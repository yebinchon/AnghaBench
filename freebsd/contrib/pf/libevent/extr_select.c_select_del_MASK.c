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
struct selectop {size_t event_fds; int /*<<< orphan*/ ** event_w_by_fd; int /*<<< orphan*/  event_writeset_in; int /*<<< orphan*/ ** event_r_by_fd; int /*<<< orphan*/  event_readset_in; } ;
struct event {int ev_events; size_t ev_fd; } ;

/* Variables and functions */
 int EV_READ ; 
 int EV_SIGNAL ; 
 int EV_WRITE ; 
 int /*<<< orphan*/  FUNC0 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct selectop*) ; 
 int FUNC2 (struct event*) ; 

int
FUNC3(void *arg, struct event *ev)
{
	struct selectop *sop = arg;

	FUNC1(sop);
	if (ev->ev_events & EV_SIGNAL)
		return (FUNC2(ev));

	if (sop->event_fds < ev->ev_fd) {
		FUNC1(sop);
		return (0);
	}

	if (ev->ev_events & EV_READ) {
		FUNC0(ev->ev_fd, sop->event_readset_in);
		sop->event_r_by_fd[ev->ev_fd] = NULL;
	}

	if (ev->ev_events & EV_WRITE) {
		FUNC0(ev->ev_fd, sop->event_writeset_in);
		sop->event_w_by_fd[ev->ev_fd] = NULL;
	}

	FUNC1(sop);
	return (0);
}