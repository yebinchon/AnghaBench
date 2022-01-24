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
struct pollfd {int events; int /*<<< orphan*/  fd; } ;
typedef  int /*<<< orphan*/  fd_set ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ *) ; 
 int POLLIN ; 
 int POLLOUT ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static void FUNC2(struct pollfd *fds, int *nfds,
			    fd_set *readfds, fd_set *writefds, fd_set *exceptfds)
{
	int fd, events, i = 0;

	for (fd = 0; fd < *nfds; fd++) {
		events = (readfds && FUNC0(fd, readfds)) ? POLLIN : 0;
		if (writefds && FUNC0(fd, writefds))
			events |= POLLOUT;

		if (events || (exceptfds && FUNC0(fd, exceptfds))) {
			fds[i].fd = FUNC1(fd);
			fds[i++].events = events;
		}
	}

	*nfds = i;
}