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
 int /*<<< orphan*/  FUNC0 (char*,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*) ; 
 int FUNC4 (int,int /*<<< orphan*/ ,...) ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 

int
FUNC6(int fd)
{
	int val;

	val = FUNC4(fd, F_GETFL);
	if (val < 0) {
		FUNC3("fcntl(%d, F_GETFL): %s", fd, FUNC5(errno));
		return (-1);
	}
	if (val & O_NONBLOCK) {
		FUNC2("fd %d is O_NONBLOCK", fd);
		return (0);
	}
	FUNC1("fd %d setting O_NONBLOCK", fd);
	val |= O_NONBLOCK;
	if (FUNC4(fd, F_SETFL, val) == -1) {
		FUNC0("fcntl(%d, F_SETFL, O_NONBLOCK): %s", fd,
		    FUNC5(errno));
		return (-1);
	}
	return (0);
}