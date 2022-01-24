#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  union dinode {int dummy; } dinode ;
typedef  int /*<<< orphan*/  uintmax_t ;
typedef  int u_char ;
struct cg {int cg_initediblk; } ;
typedef  int ino_t ;
struct TYPE_4__ {int fs_ncg; int fs_ipg; scalar_t__ fs_magic; int fs_flags; int /*<<< orphan*/  fs_cgsize; } ;

/* Variables and functions */
 int CHAR_BIT ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 (union dinode*,int /*<<< orphan*/ ) ; 
 int FS_DOSOFTDEP ; 
 scalar_t__ FS_UFS2_MAGIC ; 
 int IFDIR ; 
 int IFLNK ; 
 int IFMT ; 
 int IFREG ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int UFS_ROOTINO ; 
 int UF_NODUMP ; 
 scalar_t__ FUNC3 (union dinode*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (union dinode*) ; 
 int /*<<< orphan*/  FUNC6 (struct cg*) ; 
 int* FUNC7 (struct cg*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  di_flags ; 
 int /*<<< orphan*/  dumpdirmap ; 
 int /*<<< orphan*/  dumpinomap ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 union dinode* FUNC10 (int,int*) ; 
 struct cg* FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nonodump ; 
 int /*<<< orphan*/  FUNC13 (char*,...) ; 
 TYPE_1__* sblock ; 
 int /*<<< orphan*/  usedinomap ; 

int
FUNC14(ino_t maxino, long *tapesize)
{
	int i, cg, mode, inosused;
	int anydirskipped = 0;
	union dinode *dp;
	struct cg *cgp;
	ino_t ino;
	u_char *cp;

	if ((cgp = FUNC11(sblock->fs_cgsize)) == NULL)
		FUNC13("mapfiles: cannot allocate memory.\n");
	for (cg = 0; cg < sblock->fs_ncg; cg++) {
		ino = cg * sblock->fs_ipg;
		FUNC4(FUNC9(sblock, FUNC8(sblock, cg)), (char *)cgp,
		    sblock->fs_cgsize);
		if (sblock->fs_magic == FS_UFS2_MAGIC)
			inosused = cgp->cg_initediblk;
		else
			inosused = sblock->fs_ipg;
		/*
		 * If we are using soft updates, then we can trust the
		 * cylinder group inode allocation maps to tell us which
		 * inodes are allocated. We will scan the used inode map
		 * to find the inodes that are really in use, and then
		 * read only those inodes in from disk.
		 */
		if (sblock->fs_flags & FS_DOSOFTDEP) {
			if (!FUNC6(cgp))
				FUNC13("mapfiles: cg %d: bad magic number\n", cg);
			cp = &FUNC7(cgp)[(inosused - 1) / CHAR_BIT];
			for ( ; inosused > 0; inosused -= CHAR_BIT, cp--) {
				if (*cp == 0)
					continue;
				for (i = 1 << (CHAR_BIT - 1); i > 0; i >>= 1) {
					if (*cp & i)
						break;
					inosused--;
				}
				break;
			}
			if (inosused <= 0)
				continue;
		}
		for (i = 0; i < inosused; i++, ino++) {
			if (ino < UFS_ROOTINO ||
			    (dp = FUNC10(ino, &mode)) == NULL ||
			    (mode & IFMT) == 0)
				continue;
			if (ino >= maxino) {
				FUNC12("Skipping inode %ju >= maxino %ju\n",
				    (uintmax_t)ino, (uintmax_t)maxino);
				continue;
			}
			/*
			 * Everything must go in usedinomap so that a check
			 * for "in dumpdirmap but not in usedinomap" to detect
			 * dirs with nodump set has a chance of succeeding
			 * (this is used in mapdirs()).
			 */
			FUNC2(ino, usedinomap);
			if (mode == IFDIR)
				FUNC2(ino, dumpdirmap);
			if (FUNC3(dp)) {
				FUNC2(ino, dumpinomap);
				if (mode != IFREG &&
				    mode != IFDIR &&
				    mode != IFLNK)
					*tapesize += 1;
				else
					*tapesize += FUNC5(dp);
				continue;
			}
			if (mode == IFDIR) {
				if (!nonodump &&
				    (FUNC1(dp, di_flags) & UF_NODUMP))
					FUNC0(ino, usedinomap);
				anydirskipped = 1;
			}
		}
	}
	/*
	 * Restore gets very upset if the root is not dumped,
	 * so ensure that it always is dumped.
	 */
	FUNC2(UFS_ROOTINO, dumpinomap);
	return (anydirskipped);
}