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
 int EINVAL ; 
 int O_DIRECTORY ; 
 int O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int errno ; 
 int FUNC1 (int) ; 
 int FUNC2 (char*,int) ; 
 int FUNC3 (char const*,char const*) ; 

__attribute__((used)) static int
FUNC4(int fromfd, const char *from, int tofd, const char *to)
{
	int cfd, error, ret;

	if (fromfd != tofd) {
		errno = EINVAL;
		return (-1);
	}

	cfd = FUNC2(".", O_RDONLY | O_DIRECTORY);
	if (cfd == -1)
		return (-1);

	if (FUNC1(fromfd) == -1) {
		error = errno;
		(void)FUNC0(cfd);
		errno = error;
		return (-1);
	}

	ret = FUNC3(from, to);

	error = errno;
	(void)FUNC1(cfd);
	(void)FUNC0(cfd);
	errno = error;
	return (ret);
}