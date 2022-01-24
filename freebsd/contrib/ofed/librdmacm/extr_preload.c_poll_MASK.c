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
struct pollfd {scalar_t__ revents; int /*<<< orphan*/  events; int /*<<< orphan*/  fd; } ;
typedef  int nfds_t ;
struct TYPE_2__ {int (* poll ) (struct pollfd*,int,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ fd_rsocket ; 
 struct pollfd* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 TYPE_1__ real ; 
 int FUNC5 (struct pollfd*,int,int) ; 
 int FUNC6 (struct pollfd*,int,int) ; 

int FUNC7(struct pollfd *fds, nfds_t nfds, int timeout)
{
	struct pollfd *rfds;
	int i, ret;

	FUNC4();
	for (i = 0; i < nfds; i++) {
		if (FUNC2(fds[i].fd) == fd_rsocket)
			goto use_rpoll;
	}

	return real.poll(fds, nfds, timeout);

use_rpoll:
	rfds = FUNC3(nfds);
	if (!rfds)
		return FUNC0(ENOMEM);

	for (i = 0; i < nfds; i++) {
		rfds[i].fd = FUNC1(fds[i].fd);
		rfds[i].events = fds[i].events;
		rfds[i].revents = 0;
	}

	ret = FUNC5(rfds, nfds, timeout);

	for (i = 0; i < nfds; i++)
		fds[i].revents = rfds[i].revents;

	return ret;
}