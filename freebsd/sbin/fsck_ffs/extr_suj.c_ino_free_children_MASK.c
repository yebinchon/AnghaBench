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
typedef  int /*<<< orphan*/  uintmax_t ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  ufs_lbn_t ;
typedef  int /*<<< orphan*/  ufs2_daddr_t ;
struct suj_ino {int si_skipparent; } ;
struct direct {scalar_t__ d_ino; int d_namlen; char* d_name; scalar_t__ d_reclen; } ;
typedef  scalar_t__ off_t ;
typedef  scalar_t__ ino_t ;

/* Variables and functions */
 scalar_t__ UFS_WINO ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ debug ; 
 int /*<<< orphan*/  fs ; 
 struct suj_ino* FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__,scalar_t__,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC6(ino_t ino, ufs_lbn_t lbn, ufs2_daddr_t blk, int frags)
{
	struct suj_ino *sino;
	struct direct *dp;
	off_t diroff;
	uint8_t *block;
	int skipparent;
	int isdotdot;
	int dpoff;
	int size;

	sino = FUNC1(ino, 0);
	if (sino)
		skipparent = sino->si_skipparent;
	else
		skipparent = 0;
	size = FUNC4(fs, frags);
	block = FUNC0(blk, size);
	dp = (struct direct *)&block[0];
	for (dpoff = 0; dpoff < size && dp->d_reclen; dpoff += dp->d_reclen) {
		dp = (struct direct *)&block[dpoff];
		if (dp->d_ino == 0 || dp->d_ino == UFS_WINO)
			continue;
		if (dp->d_namlen == 1 && dp->d_name[0] == '.')
			continue;
		isdotdot = dp->d_namlen == 2 && dp->d_name[0] == '.' &&
		    dp->d_name[1] == '.';
		if (isdotdot && skipparent == 1)
			continue;
		if (debug)
			FUNC5("Directory %ju removing ino %ju name %s\n",
			    (uintmax_t)ino, (uintmax_t)dp->d_ino, dp->d_name);
		diroff = FUNC3(fs, lbn) + dpoff;
		FUNC2(ino, dp->d_ino, diroff, isdotdot);
	}
}