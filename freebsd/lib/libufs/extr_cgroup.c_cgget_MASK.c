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
typedef  scalar_t__ uint32_t ;
struct fs {int fs_metackhash; int /*<<< orphan*/  fs_cgsize; } ;
struct uufsd {int d_lcg; struct fs d_fs; } ;
struct cg {scalar_t__ cg_ckhash; int cg_cgx; } ;

/* Variables and functions */
 int CK_CYLGRP ; 
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  FUNC0 (struct uufsd*,char*) ; 
 int FUNC1 (struct uufsd*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (long,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct cg*) ; 
 int /*<<< orphan*/  FUNC4 (struct fs*,int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC5 (struct fs*,int /*<<< orphan*/ ) ; 

int
FUNC6(struct uufsd *disk, int cg, struct cg *cgp)
{
	struct fs *fs;
	uint32_t cghash, calchash;

	fs = &disk->d_fs;
	if (FUNC1(disk, FUNC5(fs, FUNC4(fs, cg)), (void *)cgp,
	    fs->fs_cgsize) == -1) {
		FUNC0(disk, "unable to read cylinder group");
		return (-1);
	}
	calchash = cgp->cg_ckhash;
	if ((fs->fs_metackhash & CK_CYLGRP) != 0) {
		cghash = cgp->cg_ckhash;
		cgp->cg_ckhash = 0;
		calchash = FUNC2(~0L, (void *)cgp, fs->fs_cgsize);
		cgp->cg_ckhash = cghash;
	}
	if (cgp->cg_ckhash != calchash || !FUNC3(cgp) ||
	    cgp->cg_cgx != cg) {
		FUNC0(disk, "cylinder group checks failed");
		errno = EIO;
		return (-1);
	}
	disk->d_lcg = cg;
	return (0);
}