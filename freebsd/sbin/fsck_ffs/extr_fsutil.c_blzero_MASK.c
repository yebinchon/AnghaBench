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
typedef  long ufs2_daddr_t ;
typedef  long off_t ;

/* Variables and functions */
 int /*<<< orphan*/  EEXIT ; 
 long FUNC0 (int /*<<< orphan*/ ,long) ; 
 int /*<<< orphan*/  ZEROBUFSIZE ; 
 char* FUNC1 (int /*<<< orphan*/ ,int) ; 
 long dev_bsize ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (int,long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,long) ; 
 long FUNC5 (int,char*,long) ; 

void
FUNC6(int fd, ufs2_daddr_t blk, long size)
{
	static char *zero;
	off_t offset, len;

	if (fd < 0)
		return;
	if (zero == NULL) {
		zero = FUNC1(ZEROBUFSIZE, 1);
		if (zero == NULL)
			FUNC2(EEXIT, "cannot allocate buffer pool");
	}
	offset = blk * dev_bsize;
	if (FUNC3(fd, offset, 0) < 0)
		FUNC4("SEEK BLK", blk);
	while (size > 0) {
		len = FUNC0(ZEROBUFSIZE, size);
		if (FUNC5(fd, zero, len) != len)
			FUNC4("WRITE BLK", blk);
		blk += len / dev_bsize;
		size -= len;
	}
}