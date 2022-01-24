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
typedef  int ssize_t ;

/* Variables and functions */
 int EAGAIN ; 
 int EINTR ; 
 int EIO ; 
 int FD_CLOEXEC ; 
 int /*<<< orphan*/  F_GETFD ; 
 int /*<<< orphan*/  F_SETFD ; 
 int O_CLOEXEC ; 
 int O_NOFOLLOW ; 
 int O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int errno ; 
 scalar_t__ FUNC1 (void*,size_t) ; 
 int FUNC2 (int,int /*<<< orphan*/ ,...) ; 
 int FUNC3 (char*,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int,char*,size_t) ; 

__attribute__((used)) static int
FUNC5(void *buf, size_t len)
{
	size_t i;
	int fd, flags;
	int save_errno = errno;

start:

	flags = O_RDONLY;
#ifdef O_NOFOLLOW
	flags |= O_NOFOLLOW;
#endif
#ifdef O_CLOEXEC
	flags |= O_CLOEXEC;
#endif
	fd = FUNC3("/dev/urandom", flags, 0);
	if (fd == -1) {
		if (errno == EINTR)
			goto start;
		goto nodevrandom;
	}
#ifndef O_CLOEXEC
#  ifdef HAVE_FCNTL
	fcntl(fd, F_SETFD, fcntl(fd, F_GETFD) | FD_CLOEXEC);
#  endif
#endif
	for (i = 0; i < len; ) {
		size_t wanted = len - i;
		ssize_t ret = FUNC4(fd, (char*)buf + i, wanted);

		if (ret == -1) {
			if (errno == EAGAIN || errno == EINTR)
				continue;
			FUNC0(fd);
			goto nodevrandom;
		}
		i += ret;
	}
	FUNC0(fd);
	if (FUNC1(buf, len) == 0) {
		errno = save_errno;
		return 0;		/* satisfied */
	}
nodevrandom:
	errno = EIO;
	return -1;
}