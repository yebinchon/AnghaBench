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
struct pollfd {int fd; int /*<<< orphan*/  events; } ;
typedef  int /*<<< orphan*/  fd_set ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  POLLIN ; 
 int /*<<< orphan*/  POLLOUT ; 
 struct pollfd* FUNC1 (int,int) ; 

__attribute__((used)) static struct pollfd *
FUNC2(int *nfds, fd_set *readfds, fd_set *writefds, fd_set *exceptfds)
{
	struct pollfd *fds;
	int fd, i = 0;

	fds = FUNC1(*nfds, sizeof(*fds));
	if (!fds)
		return NULL;

	for (fd = 0; fd < *nfds; fd++) {
		if (readfds && FUNC0(fd, readfds)) {
			fds[i].fd = fd;
			fds[i].events = POLLIN;
		}

		if (writefds && FUNC0(fd, writefds)) {
			fds[i].fd = fd;
			fds[i].events |= POLLOUT;
		}

		if (exceptfds && FUNC0(fd, exceptfds))
			fds[i].fd = fd;

		if (fds[i].fd)
			i++;
	}

	*nfds = i;
	return fds;
}