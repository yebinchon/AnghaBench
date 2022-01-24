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
 int /*<<< orphan*/  F_DUPFD ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int __rpc_minfd ; 
 int FUNC0 (int) ; 
 int FUNC1 (int,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 

int
FUNC4(int fd)
{
	int nfd;

	if (fd >= __rpc_minfd)
		return (fd);

	if ((nfd = FUNC1(fd, F_DUPFD, __rpc_minfd)) == -1)
		return (fd);

	if (FUNC2(nfd) == -1) {
		FUNC0(nfd);
		return (fd);
	}

	if (FUNC0(fd) == -1) {
		/* this is okay, we will syslog an error, then use the new fd */
		(void) FUNC3(LOG_ERR,
			"could not close() fd %d; mem & fd leak", fd);
	}

	return (nfd);
}