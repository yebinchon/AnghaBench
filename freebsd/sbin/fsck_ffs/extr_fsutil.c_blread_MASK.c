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
typedef  int ufs2_daddr_t ;
typedef  int off_t ;
typedef  int intmax_t ;

/* Variables and functions */
 int /*<<< orphan*/  EEXIT ; 
 scalar_t__ bkgrdflag ; 
 int dev_bsize ; 
 int /*<<< orphan*/  diskreads ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*,long) ; 
 int FUNC3 (int,char*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 scalar_t__ resolved ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int secsize ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 scalar_t__ surrender ; 
 int /*<<< orphan*/  totalreads ; 

int
FUNC8(int fd, char *buf, ufs2_daddr_t blk, long size)
{
	char *cp;
	int i, errs;
	off_t offset;

	offset = blk;
	offset *= dev_bsize;
	if (bkgrdflag)
		FUNC7();
	totalreads++;
	diskreads++;
	if (FUNC3(fd, buf, (int)size, offset) == size) {
		if (bkgrdflag)
			FUNC6();
		return (0);
	}

	/*
	 * This is handled specially here instead of in rwerror because
	 * rwerror is used for all sorts of errors, not just true read/write
	 * errors.  It should be refactored and fixed.
	 */
	if (surrender) {
		FUNC2("CANNOT READ_BLK: %ld", (long)blk);
		FUNC0(EEXIT, "ABORTING DUE TO READ ERRORS");
	} else
		FUNC5("READ BLK", blk);

	errs = 0;
	FUNC1(buf, 0, (size_t)size);
	FUNC4("THE FOLLOWING DISK SECTORS COULD NOT BE READ:");
	for (cp = buf, i = 0; i < size; i += secsize, cp += secsize) {
		if (FUNC3(fd, cp, (int)secsize, offset + i) != secsize) {
			if (secsize != dev_bsize && dev_bsize != 1)
				FUNC4(" %jd (%jd),",
				    (intmax_t)(blk * dev_bsize + i) / secsize,
				    (intmax_t)blk + i / dev_bsize);
			else
				FUNC4(" %jd,", (intmax_t)blk + i / dev_bsize);
			errs++;
		}
	}
	FUNC4("\n");
	if (errs)
		resolved = 0;
	return (errs);
}