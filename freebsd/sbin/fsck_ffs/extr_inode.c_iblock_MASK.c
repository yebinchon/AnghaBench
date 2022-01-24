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
typedef  union dinode {int dummy; } dinode ;
typedef  int /*<<< orphan*/  u_long ;
struct inodesc {scalar_t__ id_type; int (* id_func ) (struct inodesc*) ;int id_level; scalar_t__ id_number; scalar_t__ id_lbn; scalar_t__ id_blkno; int /*<<< orphan*/  id_numfrags; } ;
struct bufarea {int /*<<< orphan*/  b_flags; } ;
typedef  scalar_t__ off_t ;
struct TYPE_3__ {scalar_t__ fs_bsize; } ;

/* Variables and functions */
 int BUFSIZ ; 
 int /*<<< orphan*/  B_INUSE ; 
 scalar_t__ DATA ; 
 scalar_t__ FUNC0 (union dinode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (union dinode*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC2 (struct bufarea*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct bufarea*,int,int /*<<< orphan*/ ) ; 
 int KEEPON ; 
 int /*<<< orphan*/  MAXPATHLEN ; 
 int FUNC4 (TYPE_1__*) ; 
 int SKIP ; 
 int STOP ; 
 scalar_t__ FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  di_size ; 
 int FUNC6 (struct inodesc*) ; 
 int /*<<< orphan*/  FUNC7 (struct bufarea*) ; 
 scalar_t__ FUNC8 (struct inodesc*,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct bufarea*) ; 
 int /*<<< orphan*/  fswritefd ; 
 struct bufarea* FUNC10 (scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC11 (char*,scalar_t__,scalar_t__) ; 
 union dinode* FUNC12 (scalar_t__) ; 
 int FUNC13 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (union dinode*) ; 
 int FUNC15 (struct inodesc*) ; 
 int /*<<< orphan*/  FUNC16 (char*,char*) ; 
 scalar_t__ preen ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 
 int FUNC18 (char*) ; 
 int rerun ; 
 TYPE_1__ sblock ; 
 int /*<<< orphan*/  FUNC19 (char*,char*,int /*<<< orphan*/ ) ; 
 int FUNC20 (struct inodesc*) ; 
 int FUNC21 (struct inodesc*) ; 

__attribute__((used)) static int
FUNC22(struct inodesc *idesc, off_t isize, int type)
{
	struct bufarea *bp;
	int i, n, (*func)(struct inodesc *), nif;
	off_t sizepb;
	char buf[BUFSIZ];
	char pathbuf[MAXPATHLEN + 1];
	union dinode *dp;

	if (idesc->id_type != DATA) {
		func = idesc->id_func;
		if (((n = (*func)(idesc)) & KEEPON) == 0)
			return (n);
	} else
		func = dirscan;
	if (FUNC5(idesc->id_blkno, idesc->id_numfrags))
		return (SKIP);
	bp = FUNC10(idesc->id_blkno, sblock.fs_bsize, type);
	idesc->id_level--;
	for (sizepb = sblock.fs_bsize, i = 0; i < idesc->id_level; i++)
		sizepb *= FUNC4(&sblock);
	if (FUNC13(isize, sizepb) > FUNC4(&sblock))
		nif = FUNC4(&sblock);
	else
		nif = FUNC13(isize, sizepb);
	if (idesc->id_func == pass1check && nif < FUNC4(&sblock)) {
		for (i = nif; i < FUNC4(&sblock); i++) {
			if (FUNC2(bp, i) == 0)
				continue;
			(void)FUNC19(buf, "PARTIALLY TRUNCATED INODE I=%lu",
			    (u_long)idesc->id_number);
			if (preen) {
				FUNC16("%s", buf);
			} else if (FUNC8(idesc, buf)) {
				FUNC3(bp, i, 0);
				FUNC7(bp);
			}
		}
		FUNC9(fswritefd, bp);
	}
	for (i = 0; i < nif; i++) {
		if (FUNC2(bp, i)) {
			idesc->id_blkno = FUNC2(bp, i);
			if (idesc->id_level == 0) {
				idesc->id_lbn++;
				n = (*func)(idesc);
			} else {
				n = FUNC22(idesc, isize, type);
				idesc->id_level++;
			}
			if (n & STOP) {
				bp->b_flags &= ~B_INUSE;
				return (n);
			}
		} else {
			idesc->id_lbn += sizepb / sblock.fs_bsize;
			if (idesc->id_type == DATA && isize > 0) {
				/* An empty block in a directory XXX */
				FUNC11(pathbuf, idesc->id_number,
						idesc->id_number);
				FUNC16("DIRECTORY %s: CONTAINS EMPTY BLOCKS",
					pathbuf);
				if (FUNC18("ADJUST LENGTH") == 1) {
					dp = FUNC12(idesc->id_number);
					FUNC1(dp, di_size,
					    FUNC0(dp, di_size) - isize);
					isize = 0;
					FUNC17(
					    "YOU MUST RERUN FSCK AFTERWARDS\n");
					rerun = 1;
					FUNC14(dp);
					bp->b_flags &= ~B_INUSE;
					return(STOP);
				}
			}
		}
		isize -= sizepb;
	}
	bp->b_flags &= ~B_INUSE;
	return (KEEPON);
}