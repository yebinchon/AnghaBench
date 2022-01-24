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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  errno ; 
 int FUNC1 (char const*,int,...) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 

const char *
FUNC4(void)
{
	const char *fn = "test_flopen_lock_self";
	const char *result = NULL;
	int fd1, fd2;

	FUNC3(fn);
	fd1 = FUNC1(fn, O_RDWR|O_CREAT, 0640);
	if (fd1 < 0) {
		result = FUNC2(errno);
	} else {
		fd2 = FUNC1(fn, O_RDWR|O_NONBLOCK);
		if (fd2 >= 0) {
			result = "second open succeeded";
			FUNC0(fd2);
		}
		FUNC0(fd1);
	}
	FUNC3(fn);
	return (result);
}