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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int /*<<< orphan*/ ) ; 
 int FD_CLOEXEC ; 
 int /*<<< orphan*/  F_GETFD ; 
 int /*<<< orphan*/  F_GETFL ; 
 int /*<<< orphan*/  F_GETNOSIGPIPE ; 
 int O_CLOEXEC ; 
 int O_NONBLOCK ; 
 int O_NOSIGPIPE ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  errno ; 
 int FUNC4 (int,int /*<<< orphan*/ ) ; 
 int FUNC5 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(int flags)
{
	int fd[2], i;

	while ((i = FUNC5("/", O_RDONLY)) < 3)
		FUNC0(i != -1);

#ifdef __FreeBSD__
	closefrom(3);
#else
	FUNC1(FUNC3(3) != -1, "closefrom failed: %s",
	    FUNC7(errno));
#endif

	FUNC0(FUNC6(fd, flags) == 0);

	FUNC0(fd[0] == 3);
	FUNC0(fd[1] == 4);

	if (flags & O_CLOEXEC) {
		FUNC0((FUNC4(fd[0], F_GETFD) & FD_CLOEXEC) != 0);
		FUNC0((FUNC4(fd[1], F_GETFD) & FD_CLOEXEC) != 0);
	} else {
		FUNC0((FUNC4(fd[0], F_GETFD) & FD_CLOEXEC) == 0);
		FUNC0((FUNC4(fd[1], F_GETFD) & FD_CLOEXEC) == 0);
	}

	if (flags & O_NONBLOCK) {
		FUNC0((FUNC4(fd[0], F_GETFL) & O_NONBLOCK) != 0);
		FUNC0((FUNC4(fd[1], F_GETFL) & O_NONBLOCK) != 0);
	} else {
		FUNC0((FUNC4(fd[0], F_GETFL) & O_NONBLOCK) == 0);
		FUNC0((FUNC4(fd[1], F_GETFL) & O_NONBLOCK) == 0);
	}

#ifndef __FreeBSD__
	if (flags & O_NOSIGPIPE) {
		FUNC0(FUNC4(fd[0], F_GETNOSIGPIPE) != 0);
		FUNC0(FUNC4(fd[1], F_GETNOSIGPIPE) != 0);
	} else {
		FUNC0(FUNC4(fd[0], F_GETNOSIGPIPE) == 0);
		FUNC0(FUNC4(fd[1], F_GETNOSIGPIPE) == 0);
	}
#endif

	FUNC0(FUNC2(fd[0]) != -1);
	FUNC0(FUNC2(fd[1]) != -1);
}