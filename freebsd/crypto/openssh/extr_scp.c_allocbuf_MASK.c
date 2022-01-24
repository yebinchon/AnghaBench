#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct stat {int /*<<< orphan*/  st_blksize; } ;
struct TYPE_4__ {size_t cnt; int /*<<< orphan*/  buf; } ;
typedef  TYPE_1__ BUF ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC1 (int,struct stat*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,size_t,size_t,int) ; 

BUF *
FUNC5(BUF *bp, int fd, int blksize)
{
	size_t size;
#ifdef HAVE_STRUCT_STAT_ST_BLKSIZE
	struct stat stb;

	if (fstat(fd, &stb) < 0) {
		run_err("fstat: %s", strerror(errno));
		return (0);
	}
	size = ROUNDUP(stb.st_blksize, blksize);
	if (size == 0)
		size = blksize;
#else /* HAVE_STRUCT_STAT_ST_BLKSIZE */
	size = blksize;
#endif /* HAVE_STRUCT_STAT_ST_BLKSIZE */
	if (bp->cnt >= size)
		return (bp);
	bp->buf = FUNC4(bp->buf, bp->cnt, size, 1);
	bp->cnt = size;
	return (bp);
}