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
typedef  int socklen_t ;

/* Variables and functions */
 int /*<<< orphan*/  IPPROTO_TCP ; 
 int /*<<< orphan*/  TCP_NODELAY ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int*) ; 
 int FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

void
FUNC6(int fd)
{
	int opt;
	socklen_t optlen;

	optlen = sizeof opt;
	if (FUNC3(fd, IPPROTO_TCP, TCP_NODELAY, &opt, &optlen) == -1) {
		FUNC0("getsockopt TCP_NODELAY: %.100s", FUNC5(errno));
		return;
	}
	if (opt == 1) {
		FUNC1("fd %d is TCP_NODELAY", fd);
		return;
	}
	opt = 1;
	FUNC1("fd %d setting TCP_NODELAY", fd);
	if (FUNC4(fd, IPPROTO_TCP, TCP_NODELAY, &opt, sizeof opt) == -1)
		FUNC2("setsockopt TCP_NODELAY: %.100s", FUNC5(errno));
}