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
struct rumpclient_fork {int dummy; } ;
typedef  int pid_t ;
typedef  int /*<<< orphan*/  fd ;

/* Variables and functions */
 int O_CREAT ; 
 int O_RDWR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,...) ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 () ; 
 int FUNC7 (char*,int) ; 
 int FUNC8 (int,int*,int) ; 
 int FUNC9 (struct rumpclient_fork*) ; 
 struct rumpclient_fork* FUNC10 () ; 
 int FUNC11 (int*) ; 

__attribute__((used)) static void
FUNC12(void)
{
	struct rumpclient_fork *rf;
	pid_t pid1, pid2;
	int fd, status;

	if ((pid1 = FUNC6()) < 2)
		FUNC3(1, "unexpected pid %d", pid1);

	fd = FUNC7("/dev/null", O_CREAT | O_RDWR);
	if (FUNC8(fd, &fd, sizeof(fd)) != sizeof(fd))
		FUNC3(1, "write newlyopened /dev/null");

	if ((rf = FUNC10()) == NULL)
		FUNC2(1, "prefork");

	switch (FUNC4()) {
	case -1:
		FUNC2(1, "fork");
		break;
	case 0:
		if (FUNC9(rf) == -1)
			FUNC2(1, "postfork init failed");

		if ((pid2 = FUNC6()) < 2)
			FUNC3(1, "unexpected pid %d", pid2);
		if (pid1 == pid2)
			FUNC3(1, "child and parent pids are equal");

		/* check that we can access the fd, the close it and exit */
		if (FUNC8(fd, &fd, sizeof(fd)) != sizeof(fd))
			FUNC3(1, "write child /dev/null");
		FUNC5(fd);
		break;
	default:
		/*
		 * check that we can access the fd, wait for the child, and
		 * check we can still access the fd
		 */
		if (FUNC8(fd, &fd, sizeof(fd)) != sizeof(fd))
			FUNC3(1, "write parent /dev/null");
		if (FUNC11(&status) == -1)
			FUNC2(1, "wait failed");
		if (!FUNC1(status) || FUNC0(status) != 0)
			FUNC3(1, "child exited with status %d", status);
		if (FUNC8(fd, &fd, sizeof(fd)) != sizeof(fd))
			FUNC3(1, "write parent /dev/null");
		break;
	}
}