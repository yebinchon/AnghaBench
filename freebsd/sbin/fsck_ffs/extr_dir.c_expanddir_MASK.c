#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  union dinode {int dummy; } dinode ;
typedef  int ufs2_daddr_t ;
struct TYPE_5__ {char* b_buf; } ;
struct bufarea {TYPE_1__ b_un; scalar_t__ b_errs; } ;
struct TYPE_6__ {size_t fs_bsize; int /*<<< orphan*/  fs_frag; } ;

/* Variables and functions */
 int FUNC0 (union dinode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (union dinode*,int /*<<< orphan*/ ,int) ; 
 int DIRBLKSIZ ; 
 int UFS_NDADDR ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (size_t) ; 
 int /*<<< orphan*/  di_blocks ; 
 int /*<<< orphan*/ * di_db ; 
 int /*<<< orphan*/  di_size ; 
 int /*<<< orphan*/  FUNC4 (struct bufarea*) ; 
 char emptydir ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 
 struct bufarea* FUNC6 (int,size_t) ; 
 int /*<<< orphan*/  FUNC7 (union dinode*) ; 
 int FUNC8 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,int) ; 
 scalar_t__ preen ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*) ; 
 scalar_t__ FUNC12 (char*) ; 
 size_t FUNC13 (TYPE_2__*,int,int) ; 
 TYPE_2__ sblock ; 

__attribute__((used)) static int
FUNC14(union dinode *dp, char *name)
{
	ufs2_daddr_t lastbn, newblk;
	struct bufarea *bp;
	char *cp, firstblk[DIRBLKSIZ];

	lastbn = FUNC8(&sblock, FUNC0(dp, di_size));
	if (lastbn >= UFS_NDADDR - 1 || FUNC0(dp, di_db[lastbn]) == 0 ||
	    FUNC0(dp, di_size) == 0)
		return (0);
	if ((newblk = FUNC2(sblock.fs_frag)) == 0)
		return (0);
	FUNC1(dp, di_db[lastbn + 1], FUNC0(dp, di_db[lastbn]));
	FUNC1(dp, di_db[lastbn], newblk);
	FUNC1(dp, di_size, FUNC0(dp, di_size) + sblock.fs_bsize);
	FUNC1(dp, di_blocks, FUNC0(dp, di_blocks) + FUNC3(sblock.fs_bsize));
	bp = FUNC6(FUNC0(dp, di_db[lastbn + 1]),
		FUNC13(&sblock, FUNC0(dp, di_size), lastbn + 1));
	if (bp->b_errs)
		goto bad;
	FUNC9(firstblk, bp->b_un.b_buf, DIRBLKSIZ);
	bp = FUNC6(newblk, sblock.fs_bsize);
	if (bp->b_errs)
		goto bad;
	FUNC9(bp->b_un.b_buf, firstblk, DIRBLKSIZ);
	for (cp = &bp->b_un.b_buf[DIRBLKSIZ];
	     cp < &bp->b_un.b_buf[sblock.fs_bsize];
	     cp += DIRBLKSIZ)
		FUNC9(cp, &emptydir, sizeof emptydir);
	FUNC4(bp);
	bp = FUNC6(FUNC0(dp, di_db[lastbn + 1]),
		FUNC13(&sblock, FUNC0(dp, di_size), lastbn + 1));
	if (bp->b_errs)
		goto bad;
	FUNC9(bp->b_un.b_buf, &emptydir, sizeof emptydir);
	FUNC11("NO SPACE LEFT IN %s", name);
	if (preen)
		FUNC10(" (EXPANDED)\n");
	else if (FUNC12("EXPAND") == 0)
		goto bad;
	FUNC4(bp);
	FUNC7(dp);
	return (1);
bad:
	FUNC1(dp, di_db[lastbn], FUNC0(dp, di_db[lastbn + 1]));
	FUNC1(dp, di_db[lastbn + 1], 0);
	FUNC1(dp, di_size, FUNC0(dp, di_size) - sblock.fs_bsize);
	FUNC1(dp, di_blocks, FUNC0(dp, di_blocks) - FUNC3(sblock.fs_bsize));
	FUNC5(newblk, sblock.fs_frag);
	return (0);
}