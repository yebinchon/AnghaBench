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
struct selectop {int event_fds; int event_fdsz; struct event** event_w_by_fd; int /*<<< orphan*/  event_writeset_in; struct event** event_r_by_fd; int /*<<< orphan*/  event_readset_in; } ;
struct event {int ev_events; int ev_fd; } ;
typedef  int /*<<< orphan*/  fd_mask ;

/* Variables and functions */
 int EV_READ ; 
 int EV_SIGNAL ; 
 int EV_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NFDBITS ; 
 int /*<<< orphan*/  FUNC1 (struct selectop*) ; 
 int FUNC2 (struct event*) ; 
 int FUNC3 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct selectop*,int) ; 

int
FUNC5(void *arg, struct event *ev)
{
	struct selectop *sop = arg;

	if (ev->ev_events & EV_SIGNAL)
		return (FUNC2(ev));

	FUNC1(sop);
	/*
	 * Keep track of the highest fd, so that we can calculate the size
	 * of the fd_sets for select(2)
	 */
	if (sop->event_fds < ev->ev_fd) {
		int fdsz = sop->event_fdsz;

		if (fdsz < sizeof(fd_mask))
			fdsz = sizeof(fd_mask);

		while (fdsz <
		    (FUNC3(ev->ev_fd + 1, NFDBITS) * sizeof(fd_mask)))
			fdsz *= 2;

		if (fdsz != sop->event_fdsz) {
			if (FUNC4(sop, fdsz)) {
				FUNC1(sop);
				return (-1);
			}
		}

		sop->event_fds = ev->ev_fd;
	}

	if (ev->ev_events & EV_READ) {
		FUNC0(ev->ev_fd, sop->event_readset_in);
		sop->event_r_by_fd[ev->ev_fd] = ev;
	}
	if (ev->ev_events & EV_WRITE) {
		FUNC0(ev->ev_fd, sop->event_writeset_in);
		sop->event_w_by_fd[ev->ev_fd] = ev;
	}
	FUNC1(sop);

	return (0);
}