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
typedef  scalar_t__ ufs2_daddr_t ;
typedef  int /*<<< orphan*/  u_long ;
struct inodesc {scalar_t__ id_blkno; scalar_t__ id_type; scalar_t__ id_number; scalar_t__ id_lbn; int id_numfrags; scalar_t__ id_level; scalar_t__ id_lballoc; scalar_t__ id_entryno; } ;
struct dups {scalar_t__ dup; struct dups* next; } ;

/* Variables and functions */
 scalar_t__ BLK_NOCOPY ; 
 scalar_t__ BLK_SNAP ; 
 int /*<<< orphan*/  EEXIT ; 
 int KEEPON ; 
 scalar_t__ MAXBAD ; 
 scalar_t__ MAXDUP ; 
 scalar_t__ FUNC0 (int) ; 
 int SKIP ; 
 scalar_t__ SNAP ; 
 int STOP ; 
 int /*<<< orphan*/  badblk ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,char*,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int FUNC3 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ cursnapshot ; 
 int /*<<< orphan*/  dupblk ; 
 struct dups* duplist ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct dups* muldup ; 
 int /*<<< orphan*/  n_blks ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 scalar_t__ preen ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (char*) ; 
 int rerun ; 
 int /*<<< orphan*/  sblock ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 

int
FUNC12(struct inodesc *idesc)
{
	int res = KEEPON;
	int anyout, nfrags;
	ufs2_daddr_t blkno = idesc->id_blkno;
	struct dups *dlp;
	struct dups *new;

	if (idesc->id_type == SNAP) {
		if (blkno == BLK_NOCOPY)
			return (KEEPON);
		if (idesc->id_number == cursnapshot) {
			if (blkno == FUNC2(&sblock, idesc->id_lbn))
				return (KEEPON);
			if (blkno == BLK_SNAP) {
				blkno = FUNC2(&sblock, idesc->id_lbn);
				idesc->id_entryno -= idesc->id_numfrags;
			}
		} else {
			if (blkno == BLK_SNAP)
				return (KEEPON);
		}
	}
	if ((anyout = FUNC3(blkno, idesc->id_numfrags)) != 0) {
		FUNC1(idesc->id_number, "BAD", blkno);
		if (badblk++ >= MAXBAD) {
			FUNC8("EXCESSIVE BAD BLKS I=%lu",
			    (u_long)idesc->id_number);
			if (preen)
				FUNC7(" (SKIPPING)\n");
			else if (FUNC9("CONTINUE") == 0) {
				FUNC4(0);
				FUNC5(EEXIT);
			}
			rerun = 1;
			return (STOP);
		}
	}
	for (nfrags = idesc->id_numfrags; nfrags > 0; blkno++, nfrags--) {
		if (anyout && FUNC3(blkno, 1)) {
			res = SKIP;
		} else if (!FUNC11(blkno)) {
			n_blks++;
			FUNC10(blkno);
		} else {
			FUNC1(idesc->id_number, "DUP", blkno);
			if (dupblk++ >= MAXDUP) {
				FUNC8("EXCESSIVE DUP BLKS I=%lu",
					(u_long)idesc->id_number);
				if (preen)
					FUNC7(" (SKIPPING)\n");
				else if (FUNC9("CONTINUE") == 0) {
					FUNC4(0);
					FUNC5(EEXIT);
				}
				rerun = 1;
				return (STOP);
			}
			new = (struct dups *)FUNC0(sizeof(struct dups));
			if (new == NULL) {
				FUNC6("DUP TABLE OVERFLOW.");
				if (FUNC9("CONTINUE") == 0) {
					FUNC4(0);
					FUNC5(EEXIT);
				}
				rerun = 1;
				return (STOP);
			}
			new->dup = blkno;
			if (muldup == NULL) {
				duplist = muldup = new;
				new->next = NULL;
			} else {
				new->next = muldup->next;
				muldup->next = new;
			}
			for (dlp = duplist; dlp != muldup; dlp = dlp->next)
				if (dlp->dup == blkno)
					break;
			if (dlp == muldup && dlp->dup != blkno)
				muldup = new;
		}
		/*
		 * count the number of blocks found in id_entryno
		 */
		idesc->id_entryno++;
	}
	if (idesc->id_level == 0 && idesc->id_lballoc < idesc->id_lbn)
		idesc->id_lballoc = idesc->id_lbn;
	return (res);
}