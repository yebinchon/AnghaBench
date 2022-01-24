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
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *) ; 
 int FD_SETSIZE ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  activefds ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int,int) ; 
 int maxactivefd ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int,int) ; 

void
FUNC7(
	int fd,
	int closing
	)
{
	int i;

	if (fd < 0 || fd >= FD_SETSIZE) {
		FUNC6(LOG_ERR,
			"Too many sockets in use, FD_SETSIZE %d exceeded by fd %d",
			FD_SETSIZE, fd);
		FUNC4(1);
	}

	if (!closing) {
		FUNC2(fd, &activefds);
		maxactivefd = FUNC5(fd, maxactivefd);
	} else {
		FUNC0(fd, &activefds);
		if (maxactivefd && fd == maxactivefd) {
			for (i = maxactivefd - 1; i >= 0; i--)
				if (FUNC1(i, &activefds)) {
					maxactivefd = i;
					break;
				}
			FUNC3(fd != maxactivefd);
		}
	}
}