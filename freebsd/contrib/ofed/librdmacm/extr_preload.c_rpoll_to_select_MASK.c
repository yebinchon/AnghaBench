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
struct pollfd {int fd; int revents; } ;
typedef  int /*<<< orphan*/  fd_set ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int POLLIN ; 
 int POLLOUT ; 
 int FUNC1 (int) ; 

__attribute__((used)) static int FUNC2(struct pollfd *fds, int nfds,
			   fd_set *readfds, fd_set *writefds, fd_set *exceptfds)
{
	int fd, rfd, i, cnt = 0;

	for (i = 0, fd = 0; i < nfds; fd++) {
		rfd = FUNC1(fd);
		if (rfd != fds[i].fd)
			continue;

		if (readfds && (fds[i].revents & POLLIN)) {
			FUNC0(fd, readfds);
			cnt++;
		}

		if (writefds && (fds[i].revents & POLLOUT)) {
			FUNC0(fd, writefds);
			cnt++;
		}

		if (exceptfds && (fds[i].revents & ~(POLLIN | POLLOUT))) {
			FUNC0(fd, exceptfds);
			cnt++;
		}
		i++;
	}

	return cnt;
}