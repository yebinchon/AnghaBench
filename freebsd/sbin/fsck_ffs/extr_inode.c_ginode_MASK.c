#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  union dinode {int dummy; } dinode ;
typedef  int /*<<< orphan*/  uintmax_t ;
typedef  int /*<<< orphan*/  ufs2_daddr_t ;
struct ufs2_dinode {int dummy; } ;
typedef  scalar_t__ ino_t ;
struct TYPE_9__ {int /*<<< orphan*/ * b_dinode2; int /*<<< orphan*/ * b_dinode1; } ;
struct TYPE_11__ {TYPE_1__ b_un; int /*<<< orphan*/  b_flags; } ;
struct TYPE_10__ {scalar_t__ fs_magic; int /*<<< orphan*/  fs_bsize; } ;

/* Variables and functions */
 int /*<<< orphan*/  BT_INODES ; 
 int /*<<< orphan*/  B_INUSE ; 
 int /*<<< orphan*/  EEXIT ; 
 scalar_t__ FS_UFS1_MAGIC ; 
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 scalar_t__ UFS_ROOTINO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,struct ufs2_dinode*) ; 
 scalar_t__ FUNC3 (TYPE_2__*,struct ufs2_dinode*) ; 
 TYPE_3__* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (union dinode*) ; 
 scalar_t__ maxino ; 
 TYPE_3__* pbp ; 
 scalar_t__ preen ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,union dinode*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 scalar_t__ FUNC10 (char*) ; 
 scalar_t__ FUNC11 (scalar_t__,scalar_t__) ; 
 TYPE_2__ sblock ; 
 scalar_t__ startinum ; 

union dinode *
FUNC12(ino_t inumber)
{
	ufs2_daddr_t iblk;
	union dinode *dp;

	if (inumber < UFS_ROOTINO || inumber > maxino)
		FUNC1(EEXIT, "bad inode number %ju to ginode",
		    (uintmax_t)inumber);
	if (startinum == 0 ||
	    inumber < startinum || inumber >= startinum + FUNC0(&sblock)) {
		iblk = FUNC5(&sblock, inumber);
		if (pbp != NULL)
			pbp->b_flags &= ~B_INUSE;
		pbp = FUNC4(iblk, sblock.fs_bsize, BT_INODES);
		startinum = FUNC11(inumber, FUNC0(&sblock));
	}
	if (sblock.fs_magic == FS_UFS1_MAGIC)
		return ((union dinode *)
		    &pbp->b_un.b_dinode1[inumber % FUNC0(&sblock)]);
	dp = (union dinode *)&pbp->b_un.b_dinode2[inumber % FUNC0(&sblock)];
	if (FUNC3(&sblock, (struct ufs2_dinode *)dp) != 0) {
		FUNC9("INODE CHECK-HASH FAILED");
		FUNC8(inumber, dp);
		if (preen || FUNC10("FIX") != 0) {
			if (preen)
				FUNC7(" (FIXED)\n");
			FUNC2(&sblock,
			    (struct ufs2_dinode *)dp);
			FUNC6(dp);
		}
	}
	return (dp);
}