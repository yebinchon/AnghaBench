#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  time_t ;
typedef  int off_t ;
typedef  int /*<<< orphan*/  intmax_t ;
struct TYPE_11__ {int cs_nbfree; int cs_ndir; int cs_nifree; int cs_nffree; } ;
struct TYPE_14__ {int cg_magic; int cg_cgx; int cg_ndblk; int cg_niblk; int cg_initediblk; int cg_unrefs; int cg_old_ncyl; int cg_old_niblk; int cg_rotor; int cg_irotor; int cg_frotor; int* cg_frsum; int /*<<< orphan*/  cg_nclusterblks; TYPE_1__ cg_cs; int /*<<< orphan*/  cg_old_time; int /*<<< orphan*/  cg_time; } ;
struct TYPE_13__ {int d_lcg; int d_bsize; int d_ufs; } ;
struct TYPE_12__ {int fs_frag; int fs_contigsumsize; int /*<<< orphan*/  fs_fpg; int /*<<< orphan*/  fs_ipg; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 TYPE_5__ acg ; 
 TYPE_2__ afs ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*) ; 
 int* FUNC3 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 TYPE_3__ disk ; 
 int FUNC7 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 

__attribute__((used)) static int
FUNC10(void)
{
	time_t cgtime;
	off_t cur;
	int i, j;

	FUNC9("\ncg %d:\n", disk.d_lcg);
	cur = FUNC7(&afs, FUNC5(&afs, disk.d_lcg)) * disk.d_bsize;
	switch (disk.d_ufs) {
	case 2:
		cgtime = acg.cg_time;
		FUNC9("magic\t%x\ttell\t%jx\ttime\t%s",
		    acg.cg_magic, (intmax_t)cur, FUNC6(&cgtime));
		FUNC9("cgx\t%d\tndblk\t%d\tniblk\t%d\tinitiblk %d\tunrefs %d\n",
		    acg.cg_cgx, acg.cg_ndblk, acg.cg_niblk, acg.cg_initediblk,
		    acg.cg_unrefs);
		break;
	case 1:
		cgtime = acg.cg_old_time;
		FUNC9("magic\t%x\ttell\t%jx\ttime\t%s",
		    acg.cg_magic, (intmax_t)cur, FUNC6(&cgtime));
		FUNC9("cgx\t%d\tncyl\t%d\tniblk\t%d\tndblk\t%d\n",
		    acg.cg_cgx, acg.cg_old_ncyl, acg.cg_old_niblk,
		    acg.cg_ndblk);
		break;
	default:
		break;
	}
	FUNC9("nbfree\t%d\tndir\t%d\tnifree\t%d\tnffree\t%d\n",
	    acg.cg_cs.cs_nbfree, acg.cg_cs.cs_ndir,
	    acg.cg_cs.cs_nifree, acg.cg_cs.cs_nffree);
	FUNC9("rotor\t%d\tirotor\t%d\tfrotor\t%d\nfrsum",
	    acg.cg_rotor, acg.cg_irotor, acg.cg_frotor);
	for (i = 1, j = 0; i < afs.fs_frag; i++) {
		FUNC9("\t%d", acg.cg_frsum[i]);
		j += i * acg.cg_frsum[i];
	}
	FUNC9("\nsum of frsum: %d", j);
	if (afs.fs_contigsumsize > 0) {
		for (i = 1; i < afs.fs_contigsumsize; i++) {
			if ((i - 1) % 8 == 0)
				FUNC9("\nclusters %d-%d:", i,
				    FUNC0(afs.fs_contigsumsize - 1, i + 7));
			FUNC9("\t%d", FUNC3(&acg)[i]);
		}
		FUNC9("\nclusters size %d and over: %d\n",
		    afs.fs_contigsumsize,
		    FUNC3(&acg)[afs.fs_contigsumsize]);
		FUNC9("clusters free:\t");
		FUNC8(FUNC2(&acg), acg.cg_nclusterblks);
	} else
		FUNC9("\n");
	FUNC9("inodes used:\t");
	FUNC8(FUNC4(&acg), afs.fs_ipg);
	FUNC9("blks free:\t");
	FUNC8(FUNC1(&acg), afs.fs_fpg);
	return (0);
}