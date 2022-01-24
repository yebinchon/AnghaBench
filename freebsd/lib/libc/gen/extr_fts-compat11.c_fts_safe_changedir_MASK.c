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
struct freebsd11_stat {scalar_t__ st_dev; scalar_t__ st_ino; } ;
struct TYPE_3__ {scalar_t__ fts_dev; scalar_t__ fts_ino; } ;
typedef  TYPE_1__ FTSENT11 ;
typedef  int /*<<< orphan*/  FTS11 ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  FTS_NOCHDIR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int O_CLOEXEC ; 
 int O_DIRECTORY ; 
 int O_RDONLY ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (char*,int,int /*<<< orphan*/ ) ; 
 int errno ; 
 int FUNC3 (int) ; 
 scalar_t__ FUNC4 (int,struct freebsd11_stat*) ; 

__attribute__((used)) static int
FUNC5(FTS11 *sp, FTSENT11 *p, int fd, char *path)
{
	int ret, oerrno, newfd;
	struct freebsd11_stat sb;

	newfd = fd;
	if (FUNC0(FTS_NOCHDIR))
		return (0);
	if (fd < 0 && (newfd = FUNC2(path, O_RDONLY | O_DIRECTORY |
	    O_CLOEXEC, 0)) < 0)
		return (-1);
	if (FUNC4(newfd, &sb)) {
		ret = -1;
		goto bail;
	}
	if (p->fts_dev != sb.st_dev || p->fts_ino != sb.st_ino) {
		errno = ENOENT;		/* disinformation */
		ret = -1;
		goto bail;
	}
	ret = FUNC3(newfd);
bail:
	oerrno = errno;
	if (fd < 0)
		(void)FUNC1(newfd);
	errno = oerrno;
	return (ret);
}