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
struct statvfs {int f_blocks; int f_bsize; int f_frsize; int f_iosize; int f_bfree; int f_bavail; scalar_t__ f_fresvd; scalar_t__ f_bresvd; void* f_favail; void* f_ffree; void* f_files; } ;
struct rlimit {int rlim_cur; } ;
struct puffs_usermount {int dummy; } ;
struct dtfs_mount {int dtm_fsizes; void* dtm_nfiles; } ;
typedef  int off_t ;

/* Variables and functions */
 void* NFILES ; 
 int /*<<< orphan*/  RLIMIT_DATA ; 
 int FUNC0 (int,int) ; 
 int FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,struct rlimit*) ; 
 int /*<<< orphan*/  FUNC3 (struct statvfs*,int /*<<< orphan*/ ,int) ; 
 struct dtfs_mount* FUNC4 (struct puffs_usermount*) ; 

int
FUNC5(struct puffs_usermount *pu, struct statvfs *sbp)
{
	struct rlimit rlim;
	struct dtfs_mount *dtm;
	off_t btot, bfree;
	int pgsize;

	dtm = FUNC4(pu);
	pgsize = FUNC1();
	FUNC3(sbp, 0, sizeof(struct statvfs));

	/*
	 * Use datasize rlimit as an _approximation_ for free size.
	 * This, of course, is not accurate due to overhead and not
	 * accounting for metadata.
	 */
	if (FUNC2(RLIMIT_DATA, &rlim) == 0)
		btot = rlim.rlim_cur;
	else
		btot = 16*1024*1024;
	bfree = btot - dtm->dtm_fsizes;

	sbp->f_blocks = FUNC0(btot, pgsize) / pgsize;
	sbp->f_files = NFILES;

	sbp->f_bsize = sbp->f_frsize = sbp->f_iosize = pgsize;
	sbp->f_bfree = sbp->f_bavail = FUNC0(bfree, pgsize) / pgsize;
	sbp->f_ffree = sbp->f_favail = NFILES - dtm->dtm_nfiles;

	sbp->f_bresvd = sbp->f_fresvd = 0;

	return 0;
}