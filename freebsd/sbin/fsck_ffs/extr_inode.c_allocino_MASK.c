#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  union dinode {int dummy; } dinode ;
struct TYPE_7__ {int /*<<< orphan*/  cs_ndir; int /*<<< orphan*/  cs_nifree; } ;
struct cg {TYPE_2__ cg_cs; } ;
struct TYPE_6__ {struct cg* b_cg; } ;
struct bufarea {TYPE_1__ b_un; } ;
typedef  scalar_t__ ino_t ;
struct TYPE_9__ {scalar_t__ ino_state; int /*<<< orphan*/  ino_type; } ;
struct TYPE_8__ {scalar_t__ fs_ipg; int fs_fsize; } ;

/* Variables and functions */
 int FUNC0 (union dinode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (union dinode*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ DSTATE ; 
 scalar_t__ FSTATE ; 
#define  IFDIR 130 
#define  IFLNK 129 
 int IFMT ; 
#define  IFREG 128 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ UFS_ROOTINO ; 
 scalar_t__ USTATE ; 
 int FUNC3 (long) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct cg*) ; 
 int /*<<< orphan*/  FUNC6 (struct bufarea*) ; 
 struct bufarea* FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int,struct bufarea*) ; 
 int /*<<< orphan*/  di_atime ; 
 int /*<<< orphan*/  di_atimensec ; 
 int /*<<< orphan*/  di_blocks ; 
 int /*<<< orphan*/  di_ctime ; 
 int /*<<< orphan*/  di_ctimensec ; 
 int /*<<< orphan*/ * di_db ; 
 int /*<<< orphan*/  di_flags ; 
 int /*<<< orphan*/  di_mode ; 
 int /*<<< orphan*/  di_mtime ; 
 int /*<<< orphan*/  di_mtimensec ; 
 int /*<<< orphan*/  di_size ; 
 union dinode* FUNC9 (scalar_t__) ; 
 int FUNC10 (TYPE_3__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (union dinode*) ; 
 TYPE_4__* FUNC12 (scalar_t__) ; 
 scalar_t__ maxino ; 
 int /*<<< orphan*/  n_files ; 
 TYPE_3__ sblock ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC14 (int /*<<< orphan*/ *) ; 

ino_t
FUNC15(ino_t request, int type)
{
	ino_t ino;
	union dinode *dp;
	struct bufarea *cgbp;
	struct cg *cgp;
	int cg;

	if (request == 0)
		request = UFS_ROOTINO;
	else if (FUNC12(request)->ino_state != USTATE)
		return (0);
	for (ino = request; ino < maxino; ino++)
		if (FUNC12(ino)->ino_state == USTATE)
			break;
	if (ino == maxino)
		return (0);
	cg = FUNC10(&sblock, ino);
	cgbp = FUNC7(cg);
	cgp = cgbp->b_un.b_cg;
	if (!FUNC8(cg, cgbp))
		return (0);
	FUNC13(FUNC5(cgp), ino % sblock.fs_ipg);
	cgp->cg_cs.cs_nifree--;
	switch (type & IFMT) {
	case IFDIR:
		FUNC12(ino)->ino_state = DSTATE;
		cgp->cg_cs.cs_ndir++;
		break;
	case IFREG:
	case IFLNK:
		FUNC12(ino)->ino_state = FSTATE;
		break;
	default:
		return (0);
	}
	FUNC6(cgbp);
	dp = FUNC9(ino);
	FUNC1(dp, di_db[0], FUNC3((long)1));
	if (FUNC0(dp, di_db[0]) == 0) {
		FUNC12(ino)->ino_state = USTATE;
		return (0);
	}
	FUNC1(dp, di_mode, type);
	FUNC1(dp, di_flags, 0);
	FUNC1(dp, di_atime, FUNC14(NULL));
	FUNC1(dp, di_ctime, FUNC0(dp, di_atime));
	FUNC1(dp, di_mtime, FUNC0(dp, di_ctime));
	FUNC1(dp, di_mtimensec, 0);
	FUNC1(dp, di_ctimensec, 0);
	FUNC1(dp, di_atimensec, 0);
	FUNC1(dp, di_size, sblock.fs_fsize);
	FUNC1(dp, di_blocks, FUNC4(sblock.fs_fsize));
	n_files++;
	FUNC11(dp);
	FUNC12(ino)->ino_type = FUNC2(type);
	return (ino);
}