#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  union dinode {int dummy; } dinode ;
struct ufs2_dinode {int di_mode; } ;
struct ufs1_dinode {int di_mode; } ;
typedef  scalar_t__ ino_t ;
typedef  int /*<<< orphan*/ * caddr_t ;
struct TYPE_5__ {scalar_t__ fs_magic; scalar_t__ fs_bsize; } ;

/* Variables and functions */
 scalar_t__ FS_UFS1_MAGIC ; 
 int IFMT ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 scalar_t__ curino ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 TYPE_1__* sblock ; 

union dinode *
FUNC6(ino_t inum, int *modep)
{
	static ino_t minino, maxino;
	static caddr_t inoblock;
	struct ufs1_dinode *dp1;
	struct ufs2_dinode *dp2;

	if (inoblock == NULL && (inoblock = FUNC4(sblock->fs_bsize)) == NULL)
		FUNC5("cannot allocate inode memory.\n");
	curino = inum;
	if (inum >= minino && inum < maxino)
		goto gotit;
	FUNC1(FUNC2(sblock, FUNC3(sblock, inum)), inoblock,
	    (int)sblock->fs_bsize);
	minino = inum - (inum % FUNC0(sblock));
	maxino = minino + FUNC0(sblock);
gotit:
	if (sblock->fs_magic == FS_UFS1_MAGIC) {
		dp1 = &((struct ufs1_dinode *)inoblock)[inum - minino];
		*modep = (dp1->di_mode & IFMT);
		return ((union dinode *)dp1);
	}
	dp2 = &((struct ufs2_dinode *)inoblock)[inum - minino];
	*modep = (dp2->di_mode & IFMT);
	return ((union dinode *)dp2);
}