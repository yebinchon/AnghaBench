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
typedef  union dinode {int dummy; } dinode ;
typedef  int /*<<< orphan*/  uintmax_t ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  ufs_lbn_t ;
typedef  int /*<<< orphan*/  ufs2_daddr_t ;
struct direct {scalar_t__ d_ino; } ;
typedef  int /*<<< orphan*/  off_t ;
typedef  scalar_t__ ino_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (union dinode*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ debug ; 
 int /*<<< orphan*/  di_size ; 
 int /*<<< orphan*/  FUNC4 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fs ; 
 int /*<<< orphan*/  FUNC5 (union dinode*,scalar_t__,int /*<<< orphan*/ ,int*) ; 
 union dinode* FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC10(ino_t parent, off_t diroff, ino_t child)
{
	union dinode *dip;
	struct direct *dp;
	ufs2_daddr_t blk;
	uint8_t *block;
	ufs_lbn_t lbn;
	int blksize;
	int frags;
	int doff;

	if (debug)
		FUNC8("Clearing inode %ju from parent %ju at offset %jd\n",
		    (uintmax_t)child, (uintmax_t)parent, diroff);

	lbn = FUNC7(fs, diroff);
	doff = FUNC1(fs, diroff);
	dip = FUNC6(parent);
	blk = FUNC5(dip, parent, lbn, &frags);
	blksize = FUNC9(fs, FUNC0(dip, di_size), lbn);
	block = FUNC3(blk, blksize);
	dp = (struct direct *)&block[doff];
	if (dp->d_ino != child)
		FUNC4(1, "Inode %ju does not exist in %ju at %jd",
		    (uintmax_t)child, (uintmax_t)parent, diroff);
	dp->d_ino = 0;
	FUNC2(blk);
	/*
	 * The actual .. reference count will already have been removed
	 * from the parent by the .. remref record.
	 */
}