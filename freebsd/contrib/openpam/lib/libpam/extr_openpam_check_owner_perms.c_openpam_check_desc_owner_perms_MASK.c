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
typedef  scalar_t__ uid_t ;
struct stat {int st_mode; scalar_t__ st_uid; } ;

/* Variables and functions */
 int EINVAL ; 
 int EPERM ; 
 int /*<<< orphan*/  PAM_LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int S_IWGRP ; 
 int S_IWOTH ; 
 int errno ; 
 scalar_t__ FUNC1 (int,struct stat*) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char const*) ; 

int
FUNC4(const char *name, int fd)
{
	uid_t root, arbitrator;
	struct stat sb;
	int serrno;

	root = 0;
	arbitrator = FUNC2();
	if (FUNC1(fd, &sb) != 0) {
		serrno = errno;
		FUNC3(PAM_LOG_ERROR, "%s: %m", name);
		errno = serrno;
		return (-1);
	}
	if (!FUNC0(sb.st_mode)) {
		FUNC3(PAM_LOG_ERROR,
		    "%s: not a regular file", name);
		errno = EINVAL;
		return (-1);
	}
	if ((sb.st_uid != root && sb.st_uid != arbitrator) ||
	    (sb.st_mode & (S_IWGRP|S_IWOTH)) != 0) {
		FUNC3(PAM_LOG_ERROR,
		    "%s: insecure ownership or permissions", name);
		errno = EPERM;
		return (-1);
	}
	return (0);
}