#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct stat {scalar_t__ st_dev; scalar_t__ st_ino; } ;
struct TYPE_3__ {scalar_t__ fts_dev; scalar_t__ fts_ino; } ;
typedef  TYPE_1__ FTSENT ;
typedef  int /*<<< orphan*/  FTS ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  FTS_NOCHDIR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int O_CLOEXEC ; 
 int O_DIRECTORY ; 
 int O_RDONLY ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int,struct stat*) ; 
 int FUNC3 (char*,int,int /*<<< orphan*/ ) ; 
 int errno ; 
 int FUNC4 (int) ; 

__attribute__((used)) static int
FUNC5(FTS *sp, FTSENT *p, int fd, char *path)
{
	int ret, oerrno, newfd;
	struct stat sb;

	newfd = fd;
	if (FUNC0(FTS_NOCHDIR))
		return (0);
	if (fd < 0 && (newfd = FUNC3(path, O_RDONLY | O_DIRECTORY |
	    O_CLOEXEC, 0)) < 0)
		return (-1);
	if (FUNC2(newfd, &sb)) {
		ret = -1;
		goto bail;
	}
	if (p->fts_dev != sb.st_dev || p->fts_ino != sb.st_ino) {
		errno = ENOENT;		/* disinformation */
		ret = -1;
		goto bail;
	}
	ret = FUNC4(newfd);
bail:
	oerrno = errno;
	if (fd < 0)
		(void)FUNC1(newfd);
	errno = oerrno;
	return (ret);
}