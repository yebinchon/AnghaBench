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
struct pidfh {int pf_fd; } ;
typedef  scalar_t__ ssize_t ;
typedef  int /*<<< orphan*/  pidstr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pidfh*,int /*<<< orphan*/ ) ; 
 int errno ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 () ; 
 int FUNC3 (struct pidfh*) ; 
 scalar_t__ FUNC4 (int,char*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,int) ; 
 scalar_t__ FUNC6 (char*) ; 

int
FUNC7(struct pidfh *pfh)
{
	char pidstr[16];
	int error, fd;

	/*
	 * Check remembered descriptor, so we don't overwrite some other
	 * file if pidfile was closed and descriptor reused.
	 */
	errno = FUNC3(pfh);
	if (errno != 0) {
		/*
		 * Don't close descriptor, because we are not sure if it's ours.
		 */
		return (-1);
	}
	fd = pfh->pf_fd;

	/*
	 * Truncate PID file, so multiple calls of pidfile_write() are allowed.
	 */
	if (FUNC1(fd, 0) == -1) {
		error = errno;
		FUNC0(pfh, 0);
		errno = error;
		return (-1);
	}

	FUNC5(pidstr, sizeof(pidstr), "%u", FUNC2());
	if (FUNC4(fd, pidstr, FUNC6(pidstr), 0) != (ssize_t)FUNC6(pidstr)) {
		error = errno;
		FUNC0(pfh, 0);
		errno = error;
		return (-1);
	}

	return (0);
}