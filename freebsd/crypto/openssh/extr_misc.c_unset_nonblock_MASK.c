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
 int /*<<< orphan*/  F_GETFL ; 
 int /*<<< orphan*/  F_SETFL ; 
 int O_NONBLOCK ; 
 int /*<<< orphan*/  FUNC0 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*) ; 
 int FUNC3 (int,int /*<<< orphan*/ ,...) ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 

int
FUNC5(int fd)
{
	int val;

	val = FUNC3(fd, F_GETFL);
	if (val < 0) {
		FUNC2("fcntl(%d, F_GETFL): %s", fd, FUNC4(errno));
		return (-1);
	}
	if (!(val & O_NONBLOCK)) {
		FUNC1("fd %d is not O_NONBLOCK", fd);
		return (0);
	}
	FUNC0("fd %d clearing O_NONBLOCK", fd);
	val &= ~O_NONBLOCK;
	if (FUNC3(fd, F_SETFL, val) == -1) {
		FUNC0("fcntl(%d, F_SETFL, ~O_NONBLOCK): %s",
		    fd, FUNC4(errno));
		return (-1);
	}
	return (0);
}