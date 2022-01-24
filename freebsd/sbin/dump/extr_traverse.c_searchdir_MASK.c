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
typedef  int /*<<< orphan*/  uintmax_t ;
typedef  int /*<<< orphan*/  ufs2_daddr_t ;
struct direct {scalar_t__ d_reclen; scalar_t__ d_ino; char* d_name; } ;
typedef  scalar_t__ ino_t ;
typedef  int /*<<< orphan*/ * caddr_t ;
struct TYPE_3__ {int /*<<< orphan*/  fs_bsize; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 long HASDUMPEDFILE ; 
 long HASSUBDIRS ; 
 int IFDIR ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC4 (union dinode*) ; 
 int /*<<< orphan*/  dumpdirmap ; 
 int /*<<< orphan*/  dumpinomap ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 union dinode* FUNC6 (scalar_t__,int*) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 TYPE_1__* sblock ; 
 int /*<<< orphan*/  usedinomap ; 

__attribute__((used)) static int
FUNC10(
	ino_t ino,
	ufs2_daddr_t blkno,
	long size,
	long filesize, 
	long *tapesize,
	int nodump,
	ino_t maxino)
{
	int mode;
	struct direct *dp;
	union dinode *ip;
	long loc, ret = 0;
	static caddr_t dblk;

	if (dblk == NULL && (dblk = FUNC7(sblock->fs_bsize)) == NULL)
		FUNC9("searchdir: cannot allocate indirect memory.\n");
	FUNC3(FUNC5(sblock, blkno), dblk, (int)size);
	if (filesize < size)
		size = filesize;
	for (loc = 0; loc < size; ) {
		dp = (struct direct *)(dblk + loc);
		if (dp->d_reclen == 0) {
			FUNC8("corrupted directory, inumber %ju\n",
			    (uintmax_t)ino);
			break;
		}
		loc += dp->d_reclen;
		if (dp->d_ino == 0)
			continue;
		if (dp->d_ino >= maxino) {
			FUNC8("corrupted directory entry, d_ino %ju >= %ju\n",
			    (uintmax_t)dp->d_ino, (uintmax_t)maxino);
			break;
		}
		if (dp->d_name[0] == '.') {
			if (dp->d_name[1] == '\0')
				continue;
			if (dp->d_name[1] == '.' && dp->d_name[2] == '\0')
				continue;
		}
		if (nodump) {
			ip = FUNC6(dp->d_ino, &mode);
			if (FUNC2(dp->d_ino, dumpinomap)) {
				FUNC0(dp->d_ino, dumpinomap);
				*tapesize -= FUNC4(ip);
			}
			/*
			 * Add back to dumpdirmap and remove from usedinomap
			 * to propagate nodump.
			 */
			if (mode == IFDIR) {
				FUNC1(dp->d_ino, dumpdirmap);
				FUNC0(dp->d_ino, usedinomap);
				ret |= HASSUBDIRS;
			}
		} else {
			if (FUNC2(dp->d_ino, dumpinomap)) {
				ret |= HASDUMPEDFILE;
				if (ret & HASSUBDIRS)
					break;
			}
			if (FUNC2(dp->d_ino, dumpdirmap)) {
				ret |= HASSUBDIRS;
				if (ret & HASDUMPEDFILE)
					break;
			}
		}
	}
	return (ret);
}