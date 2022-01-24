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
typedef  int ufs2_daddr_t ;
struct fs {int fs_ipg; int fs_fpg; } ;
struct TYPE_2__ {int cs_ndir; } ;
struct cg {int cg_cgx; TYPE_1__ cg_cs; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHAR_BIT ; 
 int /*<<< orphan*/  FUNC0 (struct cg*) ; 
 int /*<<< orphan*/  FUNC1 (struct cg*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,char*,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  freeblks ; 
 int /*<<< orphan*/  freedirs ; 
 int /*<<< orphan*/  freefiles ; 
 int FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 struct fs sblock ; 

void
FUNC5(
	struct cg *oldcg,	/* cylinder group of claimed allocations */
	struct cg *newcg,	/* cylinder group of determined allocations */
	int usesysctl)		/* 1 => use sysctl interface to update maps */
{
	int inomapsize, excessdirs;
	struct fs *fs = &sblock;

	inomapsize = FUNC3(fs->fs_ipg, CHAR_BIT);
	excessdirs = oldcg->cg_cs.cs_ndir - newcg->cg_cs.cs_ndir;
	if (excessdirs < 0) {
		FUNC4("LOST %d DIRECTORIES\n", -excessdirs);
		excessdirs = 0;
	}
	if (excessdirs > 0)
		FUNC2(FUNC1(newcg), FUNC1(oldcg), inomapsize,
		    oldcg->cg_cgx * (ufs2_daddr_t)fs->fs_ipg, "DIR", freedirs,
		    0, excessdirs, usesysctl);
	FUNC2(FUNC1(newcg), FUNC1(oldcg), inomapsize,
	    oldcg->cg_cgx * (ufs2_daddr_t)fs->fs_ipg, "FILE", freefiles,
	    excessdirs, fs->fs_ipg, usesysctl);
	FUNC2(FUNC0(oldcg), FUNC0(newcg),
	    FUNC3(fs->fs_fpg, CHAR_BIT),
	    oldcg->cg_cgx * (ufs2_daddr_t)fs->fs_fpg, "FRAG",
	    freeblks, 0, fs->fs_fpg, usesysctl);
}