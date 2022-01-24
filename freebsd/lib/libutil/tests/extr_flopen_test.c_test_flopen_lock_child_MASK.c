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
typedef  int pid_t ;

/* Variables and functions */
 int O_CREAT ; 
 int O_NONBLOCK ; 
 int O_RDWR ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int volatile) ; 
 int /*<<< orphan*/  errno ; 
 int FUNC2 (char const*,int,...) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char const*) ; 

const char *
FUNC8(void)
{
	const char *fn = "test_flopen_lock_child";
	const char *result = NULL;
	pid_t pid;
	volatile int fd1, fd2;

	FUNC7(fn);
	fd1 = FUNC2(fn, O_RDWR|O_CREAT, 0640);
	if (fd1 < 0) {
		result = FUNC6(errno);
	} else {
		pid = FUNC3();
		if (pid == -1) {
			result = FUNC6(errno);
		} else if (pid == 0) {
			FUNC5(0, 0, 0, 0, 0);
			FUNC0(0);
		}
		FUNC1(fd1);
		if ((fd2 = FUNC2(fn, O_RDWR|O_NONBLOCK)) != -1) {
			result = "second open succeeded";
			FUNC1(fd2);
		}
		FUNC4(pid, SIGINT);
	}
	FUNC7(fn);
	return (result);
}