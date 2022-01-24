#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  union dinode {int dummy; } dinode ;
struct inoinfo {scalar_t__ i_dotdot; scalar_t__ i_parent; } ;
struct dirtemplate {scalar_t__ dotdot_ino; scalar_t__ dot_ino; } ;
struct TYPE_4__ {char* b_buf; } ;
struct bufarea {TYPE_1__ b_un; scalar_t__ b_errs; } ;
typedef  scalar_t__ ino_t ;
struct TYPE_6__ {int ino_linkcnt; scalar_t__ ino_state; } ;
struct TYPE_5__ {size_t fs_fsize; } ;

/* Variables and functions */
 int FUNC0 (union dinode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (union dinode*,int /*<<< orphan*/ ,int) ; 
 size_t DIRBLKSIZ ; 
 scalar_t__ DSTATE ; 
 int IFDIR ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ UFS_ROOTINO ; 
 scalar_t__ FUNC3 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (union dinode*,scalar_t__) ; 
 int /*<<< orphan*/ * di_db ; 
 int /*<<< orphan*/  di_nlink ; 
 struct dirtemplate dirhead ; 
 int /*<<< orphan*/  FUNC5 (struct bufarea*) ; 
 struct dirtemplate emptydir ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 struct bufarea* FUNC7 (int,size_t) ; 
 struct inoinfo* FUNC8 (scalar_t__) ; 
 union dinode* FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (union dinode*) ; 
 TYPE_3__* FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (char*,struct dirtemplate*,int) ; 
 TYPE_2__ sblock ; 

ino_t
FUNC13(ino_t parent, ino_t request, int mode)
{
	ino_t ino;
	char *cp;
	union dinode *dp;
	struct bufarea *bp;
	struct inoinfo *inp;
	struct dirtemplate *dirp;

	ino = FUNC3(request, IFDIR|mode);
	dirp = &dirhead;
	dirp->dot_ino = ino;
	dirp->dotdot_ino = parent;
	dp = FUNC9(ino);
	bp = FUNC7(FUNC0(dp, di_db[0]), sblock.fs_fsize);
	if (bp->b_errs) {
		FUNC6(ino);
		return (0);
	}
	FUNC12(bp->b_un.b_buf, dirp, sizeof(struct dirtemplate));
	for (cp = &bp->b_un.b_buf[DIRBLKSIZ];
	     cp < &bp->b_un.b_buf[sblock.fs_fsize];
	     cp += DIRBLKSIZ)
		FUNC12(cp, &emptydir, sizeof emptydir);
	FUNC5(bp);
	FUNC1(dp, di_nlink, 2);
	FUNC10(dp);
	if (ino == UFS_ROOTINO) {
		FUNC11(ino)->ino_linkcnt = FUNC0(dp, di_nlink);
		FUNC4(dp, ino);
		return(ino);
	}
	if (!FUNC2(parent)) {
		FUNC6(ino);
		return (0);
	}
	FUNC4(dp, ino);
	inp = FUNC8(ino);
	inp->i_parent = parent;
	inp->i_dotdot = parent;
	FUNC11(ino)->ino_state = FUNC11(parent)->ino_state;
	if (FUNC11(ino)->ino_state == DSTATE) {
		FUNC11(ino)->ino_linkcnt = FUNC0(dp, di_nlink);
		FUNC11(parent)->ino_linkcnt++;
	}
	dp = FUNC9(parent);
	FUNC1(dp, di_nlink, FUNC0(dp, di_nlink) + 1);
	FUNC10(dp);
	return (ino);
}