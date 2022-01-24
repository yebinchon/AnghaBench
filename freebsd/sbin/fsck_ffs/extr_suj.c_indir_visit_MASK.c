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
typedef  int /*<<< orphan*/  uintmax_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int ufs_lbn_t ;
typedef  scalar_t__ ufs2_daddr_t ;
typedef  int /*<<< orphan*/  ufs1_daddr_t ;
typedef  int /*<<< orphan*/  (* ino_visitor ) (scalar_t__,int,scalar_t__,scalar_t__) ;
typedef  scalar_t__ ino_t ;
struct TYPE_3__ {scalar_t__ fs_magic; scalar_t__ fs_frag; int /*<<< orphan*/  fs_bsize; } ;

/* Variables and functions */
 scalar_t__ FS_UFS1_MAGIC ; 
 int FUNC0 (TYPE_1__*) ; 
 int VISIT_INDIR ; 
 int VISIT_ROOT ; 
 scalar_t__ FUNC1 (scalar_t__,scalar_t__,int) ; 
 scalar_t__ FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ debug ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 TYPE_1__* fs ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*,scalar_t__,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void
FUNC6(ino_t ino, ufs_lbn_t lbn, ufs2_daddr_t blk, uint64_t *frags,
    ino_visitor visitor, int flags)
{
	ufs2_daddr_t *bap2;
	ufs1_daddr_t *bap1;
	ufs_lbn_t lbnadd;
	ufs2_daddr_t nblk;
	ufs_lbn_t nlbn;
	int level;
	int i;

	/*
	 * Don't visit indirect blocks with contents we can't trust.  This
	 * should only happen when indir_visit() is called to complete a
	 * truncate that never finished and not when a pointer is found via
	 * an inode.
	 */
	if (blk == 0)
		return;
	level = FUNC4(lbn);
	if (level == -1)
		FUNC3("Invalid level for lbn %jd\n", lbn);
	if ((flags & VISIT_ROOT) == 0 && FUNC1(blk, ino, lbn) == 0) {
		if (debug)
			FUNC5("blk %jd ino %ju lbn %jd(%d) is not indir.\n",
			    blk, (uintmax_t)ino, lbn, level);
		goto out;
	}
	lbnadd = 1;
	for (i = level; i > 0; i--)
		lbnadd *= FUNC0(fs);
	bap1 = (void *)FUNC2(blk, fs->fs_bsize);
	bap2 = (void *)bap1;
	for (i = 0; i < FUNC0(fs); i++) {
		if (fs->fs_magic == FS_UFS1_MAGIC)
			nblk = *bap1++;
		else
			nblk = *bap2++;
		if (nblk == 0)
			continue;
		if (level == 0) {
			nlbn = -lbn + i * lbnadd;
			(*frags) += fs->fs_frag;
			visitor(ino, nlbn, nblk, fs->fs_frag);
		} else {
			nlbn = (lbn + 1) - (i * lbnadd);
			FUNC6(ino, nlbn, nblk, frags, visitor, flags);
		}
	}
out:
	if (flags & VISIT_INDIR) {
		(*frags) += fs->fs_frag;
		visitor(ino, lbn, blk, fs->fs_frag);
	}
}