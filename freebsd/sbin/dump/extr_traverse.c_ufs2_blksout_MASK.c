#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  di_size; } ;
union dinode {TYPE_1__ dp2; } ;
typedef  scalar_t__ ufs2_daddr_t ;
typedef  int /*<<< orphan*/  ino_t ;
struct TYPE_7__ {int fs_fsize; int fs_bsize; } ;
struct TYPE_6__ {int* c_addr; int c_count; int /*<<< orphan*/  c_type; int /*<<< orphan*/  c_extsize; } ;

/* Variables and functions */
 int TP_BSIZE ; 
 int TP_NINDIR ; 
 int /*<<< orphan*/  TS_ADDR ; 
 int FUNC0 (union dinode*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int) ; 
 int FUNC3 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int,int) ; 
 TYPE_3__* sblock ; 
 TYPE_2__ spcl ; 
 int tp_bshift ; 
 int /*<<< orphan*/  FUNC5 (union dinode*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(union dinode *dp, ufs2_daddr_t *blkp, int frags, ino_t ino,
	int last)
{
	ufs2_daddr_t *bp;
	int i, j, count, resid, blks, tbperdb, added;
	static int writingextdata = 0;

	/*
	 * Calculate the number of TP_BSIZE blocks to be dumped.
	 * For filesystems with a fragment size bigger than TP_BSIZE,
	 * only part of the final fragment may need to be dumped.
	 */
	blks = FUNC4(frags * sblock->fs_fsize, TP_BSIZE);
	if (last) {
		if (writingextdata)
			resid = FUNC4(FUNC3(sblock, spcl.c_extsize),
			    TP_BSIZE);
		else
			resid = FUNC4(FUNC3(sblock, dp->dp2.di_size),
			    TP_BSIZE);
		if (resid > 0)
			blks -= FUNC4(sblock->fs_fsize, TP_BSIZE) - resid;
	}
	tbperdb = sblock->fs_bsize >> tp_bshift;
	for (i = 0; i < blks; i += TP_NINDIR) {
		if (i + TP_NINDIR > blks)
			count = blks;
		else
			count = i + TP_NINDIR;
		FUNC1(count <= TP_NINDIR + i);
		for (j = i; j < count; j++)
			if (blkp[j / tbperdb] != 0)
				spcl.c_addr[j - i] = 1;
			else
				spcl.c_addr[j - i] = 0;
		spcl.c_count = count - i;
		if (last && count == blks && !writingextdata)
			added = FUNC0(dp);
		FUNC6(ino);
		bp = &blkp[i / tbperdb];
		for (j = i; j < count; j += tbperdb, bp++)
			if (*bp != 0) {
				if (j + tbperdb <= count)
					FUNC2(*bp, (int)sblock->fs_bsize);
				else
					FUNC2(*bp, (count - j) * TP_BSIZE);
			}
		spcl.c_type = TS_ADDR;
		spcl.c_count = 0;
		if (last && count == blks && !writingextdata) {
			writingextdata = 1;
			FUNC5(dp, ino, added);
			writingextdata = 0;
		}
	}
}