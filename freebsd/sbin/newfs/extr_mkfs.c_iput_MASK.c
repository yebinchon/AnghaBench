#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_6__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;
typedef  struct TYPE_15__   TYPE_11__ ;

/* Type definitions */
union dinodep {int /*<<< orphan*/ * dp2; int /*<<< orphan*/ * dp1; } ;
union dinode {int /*<<< orphan*/  dp2; int /*<<< orphan*/  dp1; } ;
typedef  int /*<<< orphan*/  ino_t ;
struct TYPE_20__ {int /*<<< orphan*/  cs_nifree; } ;
struct TYPE_19__ {char* d_error; } ;
struct TYPE_17__ {int /*<<< orphan*/  cs_nifree; } ;
struct TYPE_18__ {scalar_t__ fs_magic; TYPE_2__ fs_cstotal; int /*<<< orphan*/  fs_cgsize; } ;
struct TYPE_16__ {int /*<<< orphan*/  cs_nifree; } ;
struct TYPE_15__ {scalar_t__ cg_magic; TYPE_1__ cg_cs; } ;

/* Variables and functions */
 scalar_t__ CG_MAGIC ; 
 scalar_t__ FS_UFS1_MAGIC ; 
 TYPE_11__ acg ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,scalar_t__,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_11__*) ; 
 scalar_t__ FUNC2 (TYPE_4__*,TYPE_11__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 TYPE_4__ disk ; 
 int /*<<< orphan*/  FUNC4 (int,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 scalar_t__ FUNC6 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 TYPE_6__* fscs ; 
 int FUNC7 (TYPE_4__*,union dinodep*,int /*<<< orphan*/ ) ; 
 scalar_t__ part_ofs ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*) ; 
 TYPE_3__ sblock ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC11(union dinode *ip, ino_t ino)
{
	union dinodep dp;

	FUNC0(&disk, part_ofs + FUNC6(&sblock, FUNC3(&sblock, 0)), (char *)&acg,
	    sblock.fs_cgsize);
	if (acg.cg_magic != CG_MAGIC) {
		FUNC8("cg 0: bad magic number\n");
		FUNC5(31);
	}
	acg.cg_cs.cs_nifree--;
	FUNC10(FUNC1(&acg), ino);
	if (FUNC2(&disk, &acg) != 0)
		FUNC4(1, "iput: cgput: %s", disk.d_error);
	sblock.fs_cstotal.cs_nifree--;
	fscs[0].cs_nifree--;
	if (FUNC7(&disk, &dp, ino) == -1) {
		FUNC8("iput: %s\n", disk.d_error);
		FUNC5(32);
	}
	if (sblock.fs_magic == FS_UFS1_MAGIC)
		*dp.dp1 = ip->dp1;
	else
		*dp.dp2 = ip->dp2;
	FUNC9(&disk);
}