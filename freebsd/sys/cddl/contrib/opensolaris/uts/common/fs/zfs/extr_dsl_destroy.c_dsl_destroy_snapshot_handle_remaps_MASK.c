#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_8__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
struct TYPE_14__ {int /*<<< orphan*/  dp_obsolete_bpobj; } ;
typedef  TYPE_2__ dsl_pool_t ;
struct TYPE_15__ {int /*<<< orphan*/  ds_remap_deadlist; int /*<<< orphan*/  ds_remap_deadlist_lock; TYPE_1__* ds_dir; } ;
typedef  TYPE_3__ dsl_dataset_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;
struct TYPE_16__ {int /*<<< orphan*/  ds_prev_snap_txg; } ;
struct TYPE_13__ {TYPE_2__* dd_pool; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (TYPE_3__*) ; 
 TYPE_8__* FUNC5 (TYPE_3__*) ; 
 scalar_t__ FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC12(dsl_dataset_t *ds, dsl_dataset_t *ds_next,
    dmu_tx_t *tx)
{
	dsl_pool_t *dp = ds->ds_dir->dd_pool;

	/* Move blocks to be obsoleted to pool's obsolete list. */
	if (FUNC6(ds_next)) {
		if (!FUNC1(&dp->dp_obsolete_bpobj))
			FUNC9(dp, tx);

		FUNC8(&ds_next->ds_remap_deadlist,
		    &dp->dp_obsolete_bpobj,
		    FUNC5(ds)->ds_prev_snap_txg, tx);
	}

	/* Merge our deadlist into next's and free it. */
	if (FUNC6(ds)) {
		uint64_t remap_deadlist_object =
		    FUNC4(ds);
		FUNC0(remap_deadlist_object != 0);

		FUNC10(&ds_next->ds_remap_deadlist_lock);
		if (!FUNC6(ds_next))
			FUNC2(ds_next, tx);
		FUNC11(&ds_next->ds_remap_deadlist_lock);

		FUNC7(&ds_next->ds_remap_deadlist,
		    remap_deadlist_object, tx);
		FUNC3(ds, tx);
	}
}