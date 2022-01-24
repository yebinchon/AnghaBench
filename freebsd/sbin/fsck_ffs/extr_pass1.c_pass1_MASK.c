#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uintmax_t ;
typedef  scalar_t__ ufs2_daddr_t ;
typedef  scalar_t__ u_int8_t ;
struct inostat {int dummy; } ;
struct inodesc {int /*<<< orphan*/  id_func; } ;
struct cg {int cg_initediblk; } ;
struct TYPE_8__ {struct cg* b_cg; } ;
struct bufarea {TYPE_1__ b_un; } ;
typedef  int ino_t ;
struct TYPE_10__ {int il_numalloced; struct inostat* il_stat; } ;
struct TYPE_9__ {int fs_ncg; scalar_t__ fs_csaddr; int fs_ipg; scalar_t__ fs_magic; int /*<<< orphan*/  fs_fsize; int /*<<< orphan*/  fs_cssize; } ;

/* Variables and functions */
 int CHAR_BIT ; 
 struct inostat* FUNC0 (unsigned int,int) ; 
 int /*<<< orphan*/  EEXIT ; 
 scalar_t__ FS_UFS2_MAGIC ; 
 int FUNC1 (TYPE_2__*) ; 
 int UFS_ROOTINO ; 
 int badblk ; 
 char* cdevname ; 
 scalar_t__* FUNC2 (struct cg*) ; 
 scalar_t__ FUNC3 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct bufarea*) ; 
 scalar_t__ FUNC5 (TYPE_2__*,int) ; 
 struct bufarea* FUNC6 (int) ; 
 scalar_t__ FUNC7 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC8 (int,struct bufarea*) ; 
 scalar_t__ FUNC9 (int,struct inodesc*,int) ; 
 int dupblk ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC11 (struct inostat*) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int,int) ; 
 scalar_t__ got_sigalarm ; 
 scalar_t__ got_siginfo ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ inoopt ; 
 TYPE_3__* inostathead ; 
 int lastino ; 
 int /*<<< orphan*/  FUNC15 (struct inostat*,struct inostat*,int) ; 
 int /*<<< orphan*/  FUNC16 (struct inodesc*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ n_blks ; 
 scalar_t__ n_files ; 
 int /*<<< orphan*/  pass1check ; 
 int /*<<< orphan*/  FUNC17 (char*,int /*<<< orphan*/ ,int,int,int) ; 
 scalar_t__ preen ; 
 int /*<<< orphan*/  FUNC18 (char*,char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC19 (char*,int,int,...) ; 
 void* FUNC20 (int,int) ; 
 TYPE_2__ sblock ; 
 int /*<<< orphan*/  FUNC21 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC22 (int) ; 
 int /*<<< orphan*/  FUNC23 (char*,char*,int) ; 
 scalar_t__ usedsoftdep ; 

void
FUNC24(void)
{
	struct inostat *info;
	struct inodesc idesc;
	struct bufarea *cgbp;
	struct cg *cgp;
	ino_t inumber, inosused, mininos;
	ufs2_daddr_t i, cgd;
	u_int8_t *cp;
	int c, rebuildcg;

	badblk = dupblk = lastino = 0;

	/*
	 * Set file system reserved blocks in used block map.
	 */
	for (c = 0; c < sblock.fs_ncg; c++) {
		cgd = FUNC5(&sblock, c);
		if (c == 0) {
			i = FUNC3(&sblock, c);
		} else
			i = FUNC7(&sblock, c);
		for (; i < cgd; i++)
			FUNC21(i);
	}
	i = sblock.fs_csaddr;
	cgd = i + FUNC14(sblock.fs_cssize, sblock.fs_fsize);
	for (; i < cgd; i++)
		FUNC21(i);

	/*
	 * Find all allocated blocks.
	 */
	FUNC16(&idesc, 0, sizeof(struct inodesc));
	idesc.id_func = pass1check;
	n_files = n_blks = 0;
	for (c = 0; c < sblock.fs_ncg; c++) {
		inumber = c * sblock.fs_ipg;
		FUNC22(inumber);
		cgbp = FUNC6(c);
		cgp = cgbp->b_un.b_cg;
		rebuildcg = 0;
		if (!FUNC8(c, cgbp))
			rebuildcg = 1;
		if (!rebuildcg && sblock.fs_magic == FS_UFS2_MAGIC) {
			inosused = cgp->cg_initediblk;
			if (inosused > sblock.fs_ipg) {
				FUNC17(
"Too many initialized inodes (%ju > %d) in cylinder group %d\nReset to %d\n",
				    (uintmax_t)inosused,
				    sblock.fs_ipg, c, sblock.fs_ipg);
				inosused = sblock.fs_ipg;
			}
		} else {
			inosused = sblock.fs_ipg;
		}
		if (got_siginfo) {
			FUNC18("%s: phase 1: cyl group %d of %d (%d%%)\n",
			    cdevname, c, sblock.fs_ncg,
			    c * 100 / sblock.fs_ncg);
			got_siginfo = 0;
		}
		if (got_sigalarm) {
			FUNC23("%s p1 %d%%", cdevname,
			     c * 100 / sblock.fs_ncg);
			got_sigalarm = 0;
		}
		/*
		 * If we are using soft updates, then we can trust the
		 * cylinder group inode allocation maps to tell us which
		 * inodes are allocated. We will scan the used inode map
		 * to find the inodes that are really in use, and then
		 * read only those inodes in from disk.
		 */
		if ((preen || inoopt) && usedsoftdep && !rebuildcg) {
			cp = &FUNC2(cgp)[(inosused - 1) / CHAR_BIT];
			for ( ; inosused != 0; cp--) {
				if (*cp == 0) {
					if (inosused > CHAR_BIT)
						inosused -= CHAR_BIT;
					else
						inosused = 0;
					continue;
				}
				for (i = 1 << (CHAR_BIT - 1); i > 0; i >>= 1) {
					if (*cp & i)
						break;
					inosused--;
				}
				break;
			}
		}
		/*
		 * Allocate inoinfo structures for the allocated inodes.
		 */
		inostathead[c].il_numalloced = inosused;
		if (inosused == 0) {
			inostathead[c].il_stat = NULL;
			continue;
		}
		info = FUNC0((unsigned)inosused, sizeof(struct inostat));
		if (info == NULL)
			FUNC10(EEXIT, "cannot alloc %u bytes for inoinfo",
			    (unsigned)(sizeof(struct inostat) * inosused));
		inostathead[c].il_stat = info;
		/*
		 * Scan the allocated inodes.
		 */
		for (i = 0; i < inosused; i++, inumber++) {
			if (inumber < UFS_ROOTINO) {
				(void)FUNC13(inumber, rebuildcg);
				continue;
			}
			/*
			 * NULL return indicates probable end of allocated
			 * inodes during cylinder group rebuild attempt.
			 * We always keep trying until we get to the minimum
			 * valid number for this cylinder group.
			 */
			if (FUNC9(inumber, &idesc, rebuildcg) == 0 &&
			    i > cgp->cg_initediblk)
				break;
		}
		/*
		 * This optimization speeds up future runs of fsck
		 * by trimming down the number of inodes in cylinder
		 * groups that formerly had many inodes but now have
		 * fewer in use.
		 */
		mininos = FUNC20(inosused + FUNC1(&sblock), FUNC1(&sblock));
		if (inoopt && !preen && !rebuildcg &&
		    sblock.fs_magic == FS_UFS2_MAGIC &&
		    cgp->cg_initediblk > 2 * FUNC1(&sblock) &&
		    mininos < cgp->cg_initediblk) {
			i = cgp->cg_initediblk;
			if (mininos < 2 * FUNC1(&sblock))
				cgp->cg_initediblk = 2 * FUNC1(&sblock);
			else
				cgp->cg_initediblk = mininos;
			FUNC19("CYLINDER GROUP %d: RESET FROM %ju TO %d %s\n",
			    c, i, cgp->cg_initediblk, "VALID INODES");
			FUNC4(cgbp);
		}
		if (inosused < sblock.fs_ipg)
			continue;
		lastino += 1;
		if (lastino < (c * sblock.fs_ipg))
			inosused = 0;
		else
			inosused = lastino - (c * sblock.fs_ipg);
		if (rebuildcg && inosused > cgp->cg_initediblk &&
		    sblock.fs_magic == FS_UFS2_MAGIC) {
			cgp->cg_initediblk = FUNC20(inosused, FUNC1(&sblock));
			FUNC19("CYLINDER GROUP %d: FOUND %d VALID INODES\n", c,
			    cgp->cg_initediblk);
		}
		/*
		 * If we were not able to determine in advance which inodes
		 * were in use, then reduce the size of the inoinfo structure
		 * to the size necessary to describe the inodes that we
		 * really found.
		 */
		if (inumber == lastino)
			continue;
		inostathead[c].il_numalloced = inosused;
		if (inosused == 0) {
			FUNC11(inostathead[c].il_stat);
			inostathead[c].il_stat = NULL;
			continue;
		}
		info = FUNC0((unsigned)inosused, sizeof(struct inostat));
		if (info == NULL)
			FUNC10(EEXIT, "cannot alloc %u bytes for inoinfo",
			    (unsigned)(sizeof(struct inostat) * inosused));
		FUNC15(info, inostathead[c].il_stat, inosused * sizeof(*info));
		FUNC11(inostathead[c].il_stat);
		inostathead[c].il_stat = info;
	}
	FUNC12();
}