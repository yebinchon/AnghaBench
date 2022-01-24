#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct fs {int /*<<< orphan*/  fs_bsize; } ;
struct TYPE_2__ {int /*<<< orphan*/  dp2; } ;
struct uufsd {int d_ufs; struct fs d_fs; int /*<<< orphan*/ * d_inoblock; int /*<<< orphan*/  d_inomin; TYPE_1__ d_dp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct uufsd*,char*) ; 
 scalar_t__ FUNC1 (struct uufsd*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct fs*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct fs*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct fs*,int /*<<< orphan*/ ) ; 

int
FUNC5(struct uufsd *disk)
{
	struct fs *fs;

	fs = &disk->d_fs;
	if (disk->d_inoblock == NULL) {
		FUNC0(disk, "No inode block allocated");
		return (-1);
	}
	if (disk->d_ufs == 2)
		FUNC2(fs, disk->d_dp.dp2);
	if (FUNC1(disk, FUNC3(fs, FUNC4(&disk->d_fs, disk->d_inomin)),
	    disk->d_inoblock, disk->d_fs.fs_bsize) <= 0)
		return (-1);
	return (0);
}