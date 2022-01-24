#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_8__ ;
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;
typedef  struct TYPE_17__   TYPE_12__ ;

/* Type definitions */
typedef  int uint ;
typedef  int /*<<< orphan*/  ufs2_daddr_t ;
struct TYPE_22__ {int /*<<< orphan*/  d_error; } ;
struct TYPE_21__ {int cs_nffree; int /*<<< orphan*/  cs_ndir; int /*<<< orphan*/  cs_nbfree; } ;
struct TYPE_18__ {int cs_nffree; int /*<<< orphan*/  cs_ndir; int /*<<< orphan*/  cs_nbfree; } ;
struct TYPE_20__ {int fs_frag; scalar_t__ fs_contigsumsize; int fs_bsize; TYPE_1__ fs_cstotal; int /*<<< orphan*/  fs_fsize; int /*<<< orphan*/  fs_cgsize; } ;
struct TYPE_19__ {scalar_t__ cs_nbfree; int cs_nffree; int /*<<< orphan*/  cs_ndir; } ;
struct TYPE_17__ {scalar_t__ cg_magic; int cg_ndblk; int /*<<< orphan*/ * cg_frsum; TYPE_2__ cg_cs; } ;

/* Variables and functions */
 scalar_t__ CG_MAGIC ; 
 int IFDIR ; 
 TYPE_12__ acg ; 
 int /*<<< orphan*/  FUNC0 (TYPE_8__*,scalar_t__,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_12__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_12__*) ; 
 scalar_t__ FUNC3 (TYPE_8__*,TYPE_12__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 TYPE_8__ disk ; 
 int /*<<< orphan*/  FUNC7 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int FUNC9 (TYPE_3__*,int) ; 
 scalar_t__ FUNC10 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 TYPE_5__* fscs ; 
 int FUNC11 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ part_ofs ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 TYPE_3__ sblock ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int) ; 

ufs2_daddr_t
FUNC15(int size, int mode)
{
	int i, blkno, frag;
	uint d;

	FUNC0(&disk, part_ofs + FUNC10(&sblock, FUNC4(&sblock, 0)), (char *)&acg,
	    sblock.fs_cgsize);
	if (acg.cg_magic != CG_MAGIC) {
		FUNC13("cg 0: bad magic number\n");
		FUNC8(38);
	}
	if (acg.cg_cs.cs_nbfree == 0) {
		FUNC13("first cylinder group ran out of space\n");
		FUNC8(39);
	}
	for (d = 0; d < acg.cg_ndblk; d += sblock.fs_frag)
		if (FUNC12(&sblock, FUNC1(&acg), d / sblock.fs_frag))
			goto goth;
	FUNC13("internal error: can't find block in cyl 0\n");
	FUNC8(40);
goth:
	blkno = FUNC9(&sblock, d);
	FUNC6(&sblock, FUNC1(&acg), blkno);
	if (sblock.fs_contigsumsize > 0)
		FUNC5(FUNC2(&acg), blkno);
	acg.cg_cs.cs_nbfree--;
	sblock.fs_cstotal.cs_nbfree--;
	fscs[0].cs_nbfree--;
	if (mode & IFDIR) {
		acg.cg_cs.cs_ndir++;
		sblock.fs_cstotal.cs_ndir++;
		fscs[0].cs_ndir++;
	}
	if (size != sblock.fs_bsize) {
		frag = FUNC11(size, sblock.fs_fsize);
		fscs[0].cs_nffree += sblock.fs_frag - frag;
		sblock.fs_cstotal.cs_nffree += sblock.fs_frag - frag;
		acg.cg_cs.cs_nffree += sblock.fs_frag - frag;
		acg.cg_frsum[sblock.fs_frag - frag]++;
		for (i = frag; i < sblock.fs_frag; i++)
			FUNC14(FUNC1(&acg), d + i);
	}
	if (FUNC3(&disk, &acg) != 0)
		FUNC7(1, "alloc: cgput: %s", disk.d_error);
	return ((ufs2_daddr_t)d);
}