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
struct stat {size_t st_size; } ;
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  O_RDONLY ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,...) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int FUNC3 (int,struct stat*) ; 
 void* FUNC4 (size_t) ; 
 int FUNC5 (char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int,void*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(const char *path, void **bufp, size_t *bufsizep)
{
	struct stat sb;
	size_t bufsize;
	void *buf;
	ssize_t nbytes;
	int error, fd;

	fd = FUNC5(path, O_RDONLY);
	if (fd < 0) {
		FUNC1("%s: %s", path, FUNC7(errno));
		return (-1);
	}

	error = FUNC3(fd, &sb);
	if (error != 0) {
		FUNC1("fstat: %s", FUNC7(errno));
		FUNC0(fd);
		return (error);
	}

	bufsize = sb.st_size;
	buf = FUNC4(bufsize);
	if (buf == NULL) {
		FUNC1("malloc: %s", FUNC7(errno));
		FUNC0(fd);
		return (error);
	}

	nbytes = FUNC6(fd, buf, bufsize);
	if (nbytes != (ssize_t)bufsize) {
		FUNC1("read: %s", FUNC7(errno));
		FUNC0(fd);
		FUNC2(buf);
		return (error);
	}

	error = FUNC0(fd);
	if (error != 0) {
		FUNC1("close: %s", FUNC7(errno));
		FUNC2(buf);
		return (error);
	}

	*bufp = buf;
	*bufsizep = bufsize;

	return (0);
}