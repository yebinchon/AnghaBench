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
 int /*<<< orphan*/  EXT2_IOC_GETFLAGS ; 
 int /*<<< orphan*/  EXT2_IOC_SETFLAGS ; 
 int EXT2_NODUMP_FL ; 
 int O_NONBLOCK ; 
 int O_RDONLY ; 
 int /*<<< orphan*/  UF_NODUMP ; 
 int /*<<< orphan*/  FUNC0 (char const*,int) ; 
 int FUNC1 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char const*,int,char*,char const*) ; 
 int FUNC5 (int,int /*<<< orphan*/ ,int*) ; 
 int FUNC6 (char const*,int) ; 

int
FUNC7(const char *file, int line, const char *pathname)
{
#if defined(HAVE_STRUCT_STAT_ST_FLAGS) && defined(UF_NODUMP)
	int r;

	assertion_count(file, line);
	r = chflags(pathname, UF_NODUMP);
	if (r < 0) {
		failure_start(file, line, "Can't set nodump %s\n", pathname);
		failure_finish(NULL);
		return (0);
	}
#elif defined(EXT2_IOC_GETFLAGS) && defined(HAVE_WORKING_EXT2_IOC_GETFLAGS)\
	 && defined(EXT2_NODUMP_FL)
	int fd, r, flags;

	assertion_count(file, line);
	fd = open(pathname, O_RDONLY | O_NONBLOCK);
	if (fd < 0) {
		failure_start(file, line, "Can't open %s\n", pathname);
		failure_finish(NULL);
		return (0);
	}
	r = ioctl(fd, EXT2_IOC_GETFLAGS, &flags);
	if (r < 0) {
		failure_start(file, line, "Can't get flags %s\n", pathname);
		failure_finish(NULL);
		return (0);
	}
	flags |= EXT2_NODUMP_FL;
	r = ioctl(fd, EXT2_IOC_SETFLAGS, &flags);
	if (r < 0) {
		failure_start(file, line, "Can't set nodump %s\n", pathname);
		failure_finish(NULL);
		return (0);
	}
	close(fd);
#else
	(void)pathname; /* UNUSED */
	FUNC0(file, line);
#endif
	return (1);
}