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
struct stat {int /*<<< orphan*/  st_mode; } ;
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
 int /*<<< orphan*/  RNDGETENTCNT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int errno ; 
 int FUNC2 (int,int /*<<< orphan*/ ,...) ; 
 int FUNC3 (int,struct stat*) ; 
 scalar_t__ FUNC4 (void*,size_t) ; 
 int FUNC5 (int,int /*<<< orphan*/ ,int*) ; 
 int FUNC6 (char*,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (int,char*,size_t) ; 

__attribute__((used)) static int
FUNC8(void *buf, size_t len)
{
	struct stat st;
	size_t i;
	int fd, cnt, flags;
	int save_errno = errno;

start:

	flags = O_RDONLY;
#ifdef O_NOFOLLOW
	flags |= O_NOFOLLOW;
#endif
#ifdef O_CLOEXEC
	flags |= O_CLOEXEC;
#endif
	fd = FUNC6("/dev/urandom", flags, 0);
	if (fd == -1) {
		if (errno == EINTR)
			goto start;
		goto nodevrandom;
	}
#ifndef O_CLOEXEC
	FUNC2(fd, F_SETFD, FUNC2(fd, F_GETFD) | FD_CLOEXEC);
#endif

	/* Lightly verify that the device node looks sane */
	if (FUNC3(fd, &st) == -1 || !FUNC0(st.st_mode)) {
		FUNC1(fd);
		goto nodevrandom;
	}
	if (FUNC5(fd, RNDGETENTCNT, &cnt) == -1) {
		FUNC1(fd);
		goto nodevrandom;
	}
	for (i = 0; i < len; ) {
		size_t wanted = len - i;
		ssize_t ret = FUNC7(fd, (char*)buf + i, wanted);

		if (ret == -1) {
			if (errno == EAGAIN || errno == EINTR)
				continue;
			FUNC1(fd);
			goto nodevrandom;
		}
		i += ret;
	}
	FUNC1(fd);
	if (FUNC4(buf, len) == 0) {
		errno = save_errno;
		return 0;		/* satisfied */
	}
nodevrandom:
	errno = EIO;
	return -1;
}