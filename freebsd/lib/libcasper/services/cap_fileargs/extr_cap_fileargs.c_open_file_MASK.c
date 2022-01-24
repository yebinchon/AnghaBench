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
 int ENOSYS ; 
 int O_CREAT ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ *) ; 
 int capflags ; 
 int /*<<< orphan*/  capmode ; 
 int /*<<< orphan*/ * caprightsp ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int errno ; 
 int FUNC2 (char const*,int,...) ; 

__attribute__((used)) static int
FUNC3(const char *name)
{
	int fd, serrno;

	if ((capflags & O_CREAT) == 0)
		fd = FUNC2(name, capflags);
	else
		fd = FUNC2(name, capflags, capmode);
	if (fd < 0)
		return (-1);

	if (caprightsp != NULL) {
		if (FUNC0(fd, caprightsp) < 0 && errno != ENOSYS) {
			serrno = errno;
			FUNC1(fd);
			errno = serrno;
			return (-1);
		}
	}

	return (fd);
}