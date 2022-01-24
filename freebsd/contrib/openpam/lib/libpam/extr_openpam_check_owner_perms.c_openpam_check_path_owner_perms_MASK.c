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
 int ENOENT ; 
 int EPERM ; 
 int /*<<< orphan*/  PAM_LOG_ERROR ; 
 int PATH_MAX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int S_IWGRP ; 
 int S_IWOTH ; 
 int errno ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/ * FUNC3 (char const*,char*) ; 
 scalar_t__ FUNC4 (char*,struct stat*) ; 
 int FUNC5 (char*) ; 

int
FUNC6(const char *path)
{
	uid_t root, arbitrator;
	char pathbuf[PATH_MAX];
	struct stat sb;
	int len, serrno, tip;

	tip = 1;
	root = 0;
	arbitrator = FUNC1();
	if (FUNC3(path, pathbuf) == NULL)
		return (-1);
	len = FUNC5(pathbuf);
	while (len > 0) {
		if (FUNC4(pathbuf, &sb) != 0) {
			if (errno != ENOENT) {
				serrno = errno;
				FUNC2(PAM_LOG_ERROR, "%s: %m", pathbuf);
				errno = serrno;
			}
			return (-1);
		}
		if (tip && !FUNC0(sb.st_mode)) {
			FUNC2(PAM_LOG_ERROR,
			    "%s: not a regular file", pathbuf);
			errno = EINVAL;
			return (-1);
		}
		if ((sb.st_uid != root && sb.st_uid != arbitrator) ||
		    (sb.st_mode & (S_IWGRP|S_IWOTH)) != 0) {
			FUNC2(PAM_LOG_ERROR,
			    "%s: insecure ownership or permissions", pathbuf);
			errno = EPERM;
			return (-1);
		}
		while (--len > 0 && pathbuf[len] != '/')
			pathbuf[len] = '\0';
		tip = 0;
	}
	return (0);
}