#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  spa_t ;
struct TYPE_10__ {int /*<<< orphan*/  ds_remap_deadlist; int /*<<< orphan*/  ds_deadlist; int /*<<< orphan*/  ds_remap_deadlist_lock; TYPE_2__* ds_dir; } ;
typedef  TYPE_3__ dsl_dataset_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;
struct TYPE_11__ {int /*<<< orphan*/  ds_prev_snap_obj; } ;
struct TYPE_9__ {TYPE_1__* dd_pool; } ;
struct TYPE_8__ {int /*<<< orphan*/ * dp_spa; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SPA_FEATURE_DEVICE_REMOVAL ; 
 int /*<<< orphan*/  SPA_FEATURE_OBSOLETE_COUNTS ; 
 int /*<<< orphan*/  UINT64_MAX ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_5__* FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

void
FUNC10(dsl_dataset_t *ds, dmu_tx_t *tx)
{
	uint64_t remap_deadlist_obj;
	spa_t *spa = ds->ds_dir->dd_pool->dp_spa;

	FUNC0(FUNC2(tx));
	FUNC0(FUNC1(&ds->ds_remap_deadlist_lock));
	/*
	 * Currently we only create remap deadlists when there are indirect
	 * vdevs with referenced mappings.
	 */
	FUNC0(FUNC8(spa, SPA_FEATURE_DEVICE_REMOVAL));

	remap_deadlist_obj = FUNC5(
	    &ds->ds_deadlist, UINT64_MAX,
	    FUNC3(ds)->ds_prev_snap_obj, tx);
	FUNC4(ds,
	    remap_deadlist_obj, tx);
	FUNC6(&ds->ds_remap_deadlist, FUNC9(spa),
	    remap_deadlist_obj);
	FUNC7(spa, SPA_FEATURE_OBSOLETE_COUNTS, tx);
}