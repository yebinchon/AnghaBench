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
union dinodep {struct ufs2_dinode* dp2; struct ufs1_dinode* dp1; } ;
struct fs {size_t fs_ncg; int /*<<< orphan*/  fs_bsize; scalar_t__ fs_ipg; } ;
struct uufsd {size_t d_inomin; size_t d_inomax; int d_ufs; union dinodep d_dp; int /*<<< orphan*/ * d_inoblock; struct fs d_fs; } ;
struct ufs2_dinode {int dummy; } ;
struct ufs1_dinode {int dummy; } ;
typedef  size_t ino_t ;
typedef  int /*<<< orphan*/ * caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct uufsd*,char*) ; 
 size_t FUNC1 (struct fs*) ; 
 int /*<<< orphan*/  FUNC2 (struct uufsd*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct fs*,struct ufs2_dinode*) ; 
 int /*<<< orphan*/  FUNC4 (struct fs*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct fs*,size_t) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ) ; 

int
FUNC7(struct uufsd *disk, union dinodep *dp, ino_t inum)
{
	ino_t min, max;
	caddr_t inoblock;
	struct fs *fs;

	FUNC0(disk, NULL);

	fs = &disk->d_fs;
	if (inum >= (ino_t)fs->fs_ipg * fs->fs_ncg) {
		FUNC0(disk, "inode number out of range");
		return (-1);
	}
	inoblock = disk->d_inoblock;
	min = disk->d_inomin;
	max = disk->d_inomax;

	if (inoblock == NULL) {
		inoblock = FUNC6(fs->fs_bsize);
		if (inoblock == NULL) {
			FUNC0(disk, "unable to allocate inode block");
			return (-1);
		}
		disk->d_inoblock = inoblock;
	}
	if (inum >= min && inum < max)
		goto gotit;
	FUNC2(disk, FUNC4(fs, FUNC5(fs, inum)), inoblock,
	    fs->fs_bsize);
	disk->d_inomin = min = inum - (inum % FUNC1(fs));
	disk->d_inomax = max = min + FUNC1(fs);
gotit:	switch (disk->d_ufs) {
	case 1:
		disk->d_dp.dp1 = &((struct ufs1_dinode *)inoblock)[inum - min];
		if (dp != NULL)
			*dp = disk->d_dp;
		return (0);
	case 2:
		disk->d_dp.dp2 = &((struct ufs2_dinode *)inoblock)[inum - min];
		if (dp != NULL)
			*dp = disk->d_dp;
		if (FUNC3(fs, disk->d_dp.dp2) == 0)
			return (0);
		FUNC0(disk, "check-hash failed for inode read from disk");
		return (-1);
	default:
		break;
	}
	FUNC0(disk, "unknown UFS filesystem type");
	return (-1);
}