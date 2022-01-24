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
 int O_CREAT ; 
 int O_NONBLOCK ; 
 int O_RDWR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int volatile) ; 
 int /*<<< orphan*/  errno ; 
 int FUNC2 (char const*,int,...) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 
 scalar_t__ FUNC5 () ; 

const char *
FUNC6(void)
{
	const char *fn = "test_flopen_lock_other";
	const char *result = NULL;
	volatile int fd1, fd2;

	FUNC4(fn);
	fd1 = FUNC2(fn, O_RDWR|O_CREAT, 0640);
	if (fd1 < 0) {
		result = FUNC3(errno);
	} else {
		fd2 = -42;
		if (FUNC5() == 0) {
			fd2 = FUNC2(fn, O_RDWR|O_NONBLOCK);
			FUNC1(fd2);
			FUNC0(0);
		}
		if (fd2 == -42)
			result = "vfork() doesn't work as expected";
		if (fd2 >= 0)
			result = "second open succeeded";
		FUNC1(fd1);
	}
	FUNC4(fn);
	return (result);
}