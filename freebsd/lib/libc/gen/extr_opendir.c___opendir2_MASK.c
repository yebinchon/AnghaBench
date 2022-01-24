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
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 int O_CLOEXEC ; 
 int O_DIRECTORY ; 
 int O_NONBLOCK ; 
 int O_RDONLY ; 
 int __DTF_READALL ; 
 int __DTF_SKIPREAD ; 
 int /*<<< orphan*/ * FUNC0 (int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (char const*,int) ; 
 int errno ; 

DIR *
FUNC3(const char *name, int flags)
{
	int fd;
	DIR *dir;
	int saved_errno;

	if ((flags & (__DTF_READALL | __DTF_SKIPREAD)) != 0)
		return (NULL);
	if ((fd = FUNC2(name,
	    O_RDONLY | O_NONBLOCK | O_DIRECTORY | O_CLOEXEC)) == -1)
		return (NULL);

	dir = FUNC0(fd, flags, false);
	if (dir == NULL) {
		saved_errno = errno;
		FUNC1(fd);
		errno = saved_errno;
	}
	return (dir);
}