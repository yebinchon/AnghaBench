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
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  ufs_lbn_t ;
typedef  int /*<<< orphan*/  ufs2_daddr_t ;
typedef  int /*<<< orphan*/  ino_t ;

/* Variables and functions */
 int /*<<< orphan*/  UFS_NDADDR ; 
 int /*<<< orphan*/  VISIT_INDIR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  blk_free_visit ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(ufs2_daddr_t blk, ino_t ino, ufs_lbn_t lbn, int frags, int follow)
{
	uint64_t resid;
	int mask;

	mask = FUNC1(blk, ino, lbn, frags);
	resid = 0;
	if (lbn <= -UFS_NDADDR && follow && mask == 0)
		FUNC2(ino, lbn, blk, &resid, blk_free_visit, VISIT_INDIR);
	else
		FUNC0(blk, mask, frags);
}