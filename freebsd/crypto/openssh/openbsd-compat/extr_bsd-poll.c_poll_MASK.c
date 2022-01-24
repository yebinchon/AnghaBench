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
struct timeval {int tv_sec; int tv_usec; } ;
struct pollfd {int fd; int events; int revents; } ;
typedef  size_t nfds_t ;
typedef  int /*<<< orphan*/  fd_set ;
typedef  int /*<<< orphan*/  fd_mask ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int FD_SETSIZE ; 
 int FUNC2 (int,int) ; 
 int /*<<< orphan*/  NFDBITS ; 
 int POLLERR ; 
 int POLLIN ; 
 int POLLOUT ; 
 int /*<<< orphan*/ * FUNC3 (size_t,int) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 size_t FUNC5 (int,int /*<<< orphan*/ ) ; 
 int FUNC6 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timeval*) ; 

int
FUNC7(struct pollfd *fds, nfds_t nfds, int timeout)
{
	nfds_t i;
	int saved_errno, ret, fd, maxfd = 0;
	fd_set *readfds = NULL, *writefds = NULL, *exceptfds = NULL;
	size_t nmemb;
	struct timeval tv, *tvp = NULL;

	for (i = 0; i < nfds; i++) {
		fd = fds[i].fd;
		if (fd >= FD_SETSIZE) {
			errno = EINVAL;
			return -1;
		}
		maxfd = FUNC2(maxfd, fd);
	}

	nmemb = FUNC5(maxfd + 1 , NFDBITS);
	if ((readfds = FUNC3(nmemb, sizeof(fd_mask))) == NULL ||
	    (writefds = FUNC3(nmemb, sizeof(fd_mask))) == NULL ||
	    (exceptfds = FUNC3(nmemb, sizeof(fd_mask))) == NULL) {
		saved_errno = ENOMEM;
		ret = -1;
		goto out;
	}

	/* populate event bit vectors for the events we're interested in */
	for (i = 0; i < nfds; i++) {
		fd = fds[i].fd;
		if (fd == -1)
			continue;
		if (fds[i].events & POLLIN) {
			FUNC1(fd, readfds);
			FUNC1(fd, exceptfds);
		}
		if (fds[i].events & POLLOUT) {
			FUNC1(fd, writefds);
			FUNC1(fd, exceptfds);
		}
	}

	/* poll timeout is msec, select is timeval (sec + usec) */
	if (timeout >= 0) {
		tv.tv_sec = timeout / 1000;
		tv.tv_usec = (timeout % 1000) * 1000;
		tvp = &tv;
	}

	ret = FUNC6(maxfd + 1, readfds, writefds, exceptfds, tvp);
	saved_errno = errno;

	/* scan through select results and set poll() flags */
	for (i = 0; i < nfds; i++) {
		fd = fds[i].fd;
		fds[i].revents = 0;
		if (fd == -1)
			continue;
		if (FUNC0(fd, readfds)) {
			fds[i].revents |= POLLIN;
		}
		if (FUNC0(fd, writefds)) {
			fds[i].revents |= POLLOUT;
		}
		if (FUNC0(fd, exceptfds)) {
			fds[i].revents |= POLLERR;
		}
	}

out:
	FUNC4(readfds);
	FUNC4(writefds);
	FUNC4(exceptfds);
	if (ret == -1)
		errno = saved_errno;
	return ret;
}