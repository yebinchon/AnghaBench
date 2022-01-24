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
typedef  int ufs_lbn_t ;
typedef  int /*<<< orphan*/  ufs2_daddr_t ;
typedef  int /*<<< orphan*/  ino_t ;
struct TYPE_3__ {scalar_t__ fs_magic; int /*<<< orphan*/  fs_bsize; } ;

/* Variables and functions */
 scalar_t__ FS_UFS1_MAGIC ; 
 int FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,...) ; 
 TYPE_1__* fs ; 
 int FUNC3 (int) ; 

__attribute__((used)) static ufs2_daddr_t
FUNC4(ufs2_daddr_t blk, ino_t ino, ufs_lbn_t cur, ufs_lbn_t lbn)
{
	ufs2_daddr_t *bap2;
	ufs2_daddr_t *bap1;
	ufs_lbn_t lbnadd;
	ufs_lbn_t base;
	int level;
	int i;

	if (blk == 0)
		return (0);
	level = FUNC3(cur);
	if (level == -1)
		FUNC2("Invalid indir lbn %jd\n", lbn);
	if (level == 0 && lbn < 0)
		FUNC2("Invalid lbn %jd\n", lbn);
	bap2 = (void *)FUNC1(blk, fs->fs_bsize);
	bap1 = (void *)bap2;
	lbnadd = 1;
	base = -(cur + level);
	for (i = level; i > 0; i--)
		lbnadd *= FUNC0(fs);
	if (lbn > 0)
		i = (lbn - base) / lbnadd;
	else
		i = (-lbn - base) / lbnadd;
	if (i < 0 || i >= FUNC0(fs))
		FUNC2("Invalid indirect index %d produced by lbn %jd\n",
		    i, lbn);
	if (level == 0)
		cur = base + (i * lbnadd);
	else
		cur = -(base + (i * lbnadd)) - (level - 1);
	if (fs->fs_magic == FS_UFS1_MAGIC)
		blk = bap1[i];
	else
		blk = bap2[i];
	if (cur == lbn)
		return (blk);
	if (level == 0)
		FUNC2("Invalid lbn %jd at level 0\n", lbn);
	return FUNC4(blk, ino, cur, lbn);
}