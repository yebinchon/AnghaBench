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
 int AT_REMOVEDIR ; 
 int O_DIRECTORY ; 
 int O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int errno ; 
 int FUNC1 (int) ; 
 int FUNC2 (char*,int) ; 
 int FUNC3 (char const*) ; 
 int FUNC4 (char const*) ; 

__attribute__((used)) static int
FUNC5(int fd, const char *path, int flag)
{
	int cfd, error, ret;

	cfd = FUNC2(".", O_RDONLY | O_DIRECTORY);
	if (cfd == -1)
		return (-1);

	if (FUNC1(fd) == -1) {
		error = errno;
		(void)FUNC0(cfd);
		errno = error;
		return (-1);
	}

	if (flag == AT_REMOVEDIR)
		ret = FUNC3(path);
	else
		ret = FUNC4(path);

	error = errno;
	(void)FUNC1(cfd);
	(void)FUNC0(cfd);
	errno = error;
	return (ret);
}