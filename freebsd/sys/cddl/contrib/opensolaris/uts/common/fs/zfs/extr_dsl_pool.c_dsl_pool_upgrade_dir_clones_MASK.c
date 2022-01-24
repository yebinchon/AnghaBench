#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_6__ {int /*<<< orphan*/  dp_root_dir_obj; int /*<<< orphan*/  dp_meta_objset; int /*<<< orphan*/  dp_free_bpobj; int /*<<< orphan*/  dp_free_dir; int /*<<< orphan*/  dp_root_dir; } ;
typedef  TYPE_1__ dsl_pool_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;
typedef  int /*<<< orphan*/  bpobj_phys_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DMU_OT_BPOBJ ; 
 int /*<<< orphan*/  DMU_OT_BPOBJ_HDR ; 
 int /*<<< orphan*/  DMU_POOL_DIRECTORY_OBJECT ; 
 int /*<<< orphan*/  DMU_POOL_FREE_BPOBJ ; 
 int DS_FIND_CHILDREN ; 
 int DS_FIND_SERIALIZE ; 
 int /*<<< orphan*/  FREE_DIR_NAME ; 
 int /*<<< orphan*/  SPA_OLD_MAXBLOCKSIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  upgrade_dir_clones_cb ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void
FUNC9(dsl_pool_t *dp, dmu_tx_t *tx)
{
	FUNC0(FUNC5(tx));
	uint64_t obj;

	(void) FUNC6(dp, dp->dp_root_dir, FREE_DIR_NAME, tx);
	FUNC1(FUNC7(dp,
	    FREE_DIR_NAME, &dp->dp_free_dir));

	/*
	 * We can't use bpobj_alloc(), because spa_version() still
	 * returns the old version, and we need a new-version bpobj with
	 * subobj support.  So call dmu_object_alloc() directly.
	 */
	obj = FUNC3(dp->dp_meta_objset, DMU_OT_BPOBJ,
	    SPA_OLD_MAXBLOCKSIZE, DMU_OT_BPOBJ_HDR, sizeof (bpobj_phys_t), tx);
	FUNC1(FUNC8(dp->dp_meta_objset, DMU_POOL_DIRECTORY_OBJECT,
	    DMU_POOL_FREE_BPOBJ, sizeof (uint64_t), 1, &obj, tx));
	FUNC1(FUNC2(&dp->dp_free_bpobj, dp->dp_meta_objset, obj));

	FUNC1(FUNC4(dp, dp->dp_root_dir_obj,
	    upgrade_dir_clones_cb, tx, DS_FIND_CHILDREN | DS_FIND_SERIALIZE));
}