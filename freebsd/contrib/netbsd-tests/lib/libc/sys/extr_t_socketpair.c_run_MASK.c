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
 int FD_CLOEXEC ; 
 int /*<<< orphan*/  F_GETFD ; 
 int /*<<< orphan*/  F_GETFL ; 
 int O_NONBLOCK ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int SOCK_CLOEXEC ; 
 int SOCK_NONBLOCK ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int,int /*<<< orphan*/ ) ; 
 int FUNC5 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int,int,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static void
FUNC7(int domain, int type, int flags)
{
	int fd[2], i;

	while ((i = FUNC5("/", O_RDONLY)) < 3)
		FUNC0(i != -1);

#ifdef __FreeBSD__
	closefrom(3);
#else
	FUNC0(FUNC2(3) != -1);
#endif

	FUNC0(FUNC6(domain, type | flags, 0, fd) == 0);

	FUNC0(fd[0] == 3);
	FUNC0(fd[1] == 4);

	FUNC3(fd[0]);
	FUNC3(fd[1]);

	if (flags & SOCK_CLOEXEC) {
		FUNC0((FUNC4(fd[0], F_GETFD) & FD_CLOEXEC) != 0);
		FUNC0((FUNC4(fd[1], F_GETFD) & FD_CLOEXEC) != 0);
	} else {
		FUNC0((FUNC4(fd[0], F_GETFD) & FD_CLOEXEC) == 0);
		FUNC0((FUNC4(fd[1], F_GETFD) & FD_CLOEXEC) == 0);
	}

	if (flags & SOCK_NONBLOCK) {
		FUNC0((FUNC4(fd[0], F_GETFL) & O_NONBLOCK) != 0);
		FUNC0((FUNC4(fd[1], F_GETFL) & O_NONBLOCK) != 0);
	} else {
		FUNC0((FUNC4(fd[0], F_GETFL) & O_NONBLOCK) == 0);
		FUNC0((FUNC4(fd[1], F_GETFL) & O_NONBLOCK) == 0);
	}

	FUNC0(FUNC1(fd[0]) != -1);
	FUNC0(FUNC1(fd[1]) != -1);
}