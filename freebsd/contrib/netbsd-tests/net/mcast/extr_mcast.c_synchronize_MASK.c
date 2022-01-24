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
typedef  int /*<<< orphan*/  syncmsg ;
struct pollfd {int fd; int /*<<< orphan*/  events; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  POLLIN ; 
 int /*<<< orphan*/  errno ; 
 int FUNC1 (struct pollfd*,int,int) ; 
 int FUNC2 (int const,int*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int const,int*,int) ; 

__attribute__((used)) static int
FUNC5(const int fd, bool waiter)
{
	int syncmsg = 0;
	int r;
	struct pollfd pfd;

	if (waiter) {
		pfd.fd = fd;
		pfd.events = POLLIN;

		/* We use poll to avoid lock up when the peer died unexpectedly */
		r = FUNC1(&pfd, 1, 10000);
		if (r == -1)
			FUNC0(EXIT_FAILURE, "poll (%s)", FUNC3(errno));
		if (r == 0)
			/* Timed out */
			return -1;

		if (FUNC2(fd, &syncmsg, sizeof(syncmsg)) == -1)
			FUNC0(EXIT_FAILURE, "read (%s)", FUNC3(errno));
	} else {
		if (FUNC4(fd, &syncmsg, sizeof(syncmsg)) == -1)
			FUNC0(EXIT_FAILURE, "write (%s)", FUNC3(errno));
	}

	return 0;
}