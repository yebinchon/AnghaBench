#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct rsocket {scalar_t__ type; int state; TYPE_2__* cm_id; } ;
struct pollfd {int events; int revents; int /*<<< orphan*/  fd; } ;
struct TYPE_4__ {TYPE_1__* channel; } ;
struct TYPE_3__ {int /*<<< orphan*/  fd; } ;

/* Variables and functions */
 scalar_t__ EINPROGRESS ; 
 short POLLERR ; 
 short POLLHUP ; 
 int POLLIN ; 
 int POLLOUT ; 
 scalar_t__ SOCK_DGRAM ; 
 scalar_t__ SOCK_STREAM ; 
 scalar_t__ FUNC0 (struct rsocket*) ; 
 int /*<<< orphan*/  FUNC1 (struct rsocket*,int,int (*) (struct rsocket*)) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (struct pollfd*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct rsocket*) ; 
 scalar_t__ FUNC4 (struct rsocket*) ; 
 int rs_connect_error ; 
 int rs_connected ; 
 int rs_disconnected ; 
 int FUNC5 (struct rsocket*) ; 
 int rs_error ; 
 scalar_t__ FUNC6 (struct rsocket*) ; 
 int rs_listening ; 
 int rs_opening ; 
 int /*<<< orphan*/  FUNC7 (struct rsocket*,int,int (*) (struct rsocket*)) ; 

__attribute__((used)) static int FUNC8(struct rsocket *rs, int events,
		      int nonblock, int (*test)(struct rsocket *rs))
{
	struct pollfd fds;
	short revents;
	int ret;

check_cq:
	if ((rs->type == SOCK_STREAM) && ((rs->state & rs_connected) ||
	     (rs->state == rs_disconnected) || (rs->state & rs_error))) {
		FUNC7(rs, nonblock, test);

		revents = 0;
		if ((events & POLLIN) && FUNC4(rs))
			revents |= POLLIN;
		if ((events & POLLOUT) && FUNC3(rs))
			revents |= POLLOUT;
		if (!(rs->state & rs_connected)) {
			if (rs->state == rs_disconnected)
				revents |= POLLHUP;
			else
				revents |= POLLERR;
		}

		return revents;
	} else if (rs->type == SOCK_DGRAM) {
		FUNC1(rs, nonblock, test);

		revents = 0;
		if ((events & POLLIN) && FUNC6(rs))
			revents |= POLLIN;
		if ((events & POLLOUT) && FUNC0(rs))
			revents |= POLLOUT;

		return revents;
	}

	if (rs->state == rs_listening) {
		fds.fd = rs->cm_id->channel->fd;
		fds.events = events;
		fds.revents = 0;
		FUNC2(&fds, 1, 0);
		return fds.revents;
	}

	if (rs->state & rs_opening) {
		ret = FUNC5(rs);
		if (ret && (errno == EINPROGRESS)) {
			errno = 0;
		} else {
			goto check_cq;
		}
	}

	if (rs->state == rs_connect_error) {
		revents = 0;
		if (events & POLLOUT)
			revents |= POLLOUT;
		if (events & POLLIN)
			revents |= POLLIN;
		revents |= POLLERR;
		return revents;
	}

	return 0;
}