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
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 int O_CREAT ; 
 int O_EXCL ; 
 int O_WRONLY ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,...) ; 
 int /*<<< orphan*/  errno ; 
 int FUNC2 (char const*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int,void const*,size_t) ; 

__attribute__((used)) static int
FUNC5(const char *path, const void *buf, size_t bufsize)
{
	ssize_t nbytes;
	int error, fd;

	fd = FUNC2(path, O_WRONLY | O_CREAT | O_EXCL, 0700);
	if (fd < 0) {
		FUNC1("%s: %s", path, FUNC3(errno));
		return (-1);
	}

	nbytes = FUNC4(fd, buf, bufsize);
	if (nbytes != (ssize_t)bufsize) {
		FUNC1("write: %s", FUNC3(errno));
		FUNC0(fd);
		return (-1);
	}

	error = FUNC0(fd);
	if (error != 0) {
		FUNC1("close: %s", FUNC3(errno));
		return (-1);
	}

	return (0);
}