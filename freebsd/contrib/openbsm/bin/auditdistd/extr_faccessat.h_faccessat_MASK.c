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
 int AT_EACCESS ; 
 int EINVAL ; 
 int O_DIRECTORY ; 
 int O_RDONLY ; 
 int FUNC0 (char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int errno ; 
 int FUNC2 (int) ; 
 int FUNC3 (char*,int) ; 

__attribute__((used)) static int
FUNC4(int fd, const char *path, int mode, int flag)
{
	int cfd, error, ret;

	if (flag == AT_EACCESS) {
		errno = EINVAL;
		return (-1);
	}

	cfd = FUNC3(".", O_RDONLY | O_DIRECTORY);
	if (cfd == -1)
		return (-1);

	if (FUNC2(fd) == -1) {
		error = errno;
		(void)FUNC1(cfd);
		errno = error;
		return (-1);
	}

	ret = FUNC0(path, mode);

	error = errno;
	(void)FUNC2(cfd);
	(void)FUNC1(cfd);
	errno = error;
	return (ret);
}