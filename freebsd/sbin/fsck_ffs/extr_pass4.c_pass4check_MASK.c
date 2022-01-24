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
struct inodesc {scalar_t__ id_blkno; int id_numfrags; } ;
struct dups {scalar_t__ dup; struct dups* next; } ;

/* Variables and functions */
 int KEEPON ; 
 int SKIP ; 
 scalar_t__ FUNC0 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 struct dups* duplist ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  n_blks ; 
 scalar_t__ FUNC3 (scalar_t__) ; 

int
FUNC4(struct inodesc *idesc)
{
	struct dups *dlp;
	int nfrags, res = KEEPON;
	ufs2_daddr_t blkno = idesc->id_blkno;

	for (nfrags = idesc->id_numfrags; nfrags > 0; blkno++, nfrags--) {
		if (FUNC0(blkno, 1)) {
			res = SKIP;
		} else if (FUNC3(blkno)) {
			for (dlp = duplist; dlp; dlp = dlp->next) {
				if (dlp->dup != blkno)
					continue;
				dlp->dup = duplist->dup;
				dlp = duplist;
				duplist = duplist->next;
				FUNC2((char *)dlp);
				break;
			}
			if (dlp == NULL) {
				FUNC1(blkno);
				n_blks--;
			}
		}
	}
	return (res);
}