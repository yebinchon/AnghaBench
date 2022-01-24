#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_9__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zap_cursor_t ;
struct TYPE_11__ {int /*<<< orphan*/  za_first_integer; } ;
typedef  TYPE_1__ zap_attribute_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  objset_t ;
struct TYPE_12__ {int /*<<< orphan*/  ds_remap_deadlist; int /*<<< orphan*/  ds_deadlist; TYPE_5__* ds_dir; } ;
typedef  TYPE_2__ dsl_dataset_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;
struct TYPE_15__ {int /*<<< orphan*/ * dp_meta_objset; } ;
struct TYPE_14__ {int /*<<< orphan*/  dd_origin_txg; TYPE_9__* dd_pool; } ;
struct TYPE_13__ {scalar_t__ dd_clones; } ;

/* Variables and functions */
 int /*<<< orphan*/  FTAG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_9__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC5 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static void
FUNC10(dsl_dataset_t *ds, uint64_t mintxg, dmu_tx_t *tx)
{
	objset_t *mos = ds->ds_dir->dd_pool->dp_meta_objset;
	zap_cursor_t zc;
	zap_attribute_t za;

	/*
	 * If it is the old version, dd_clones doesn't exist so we can't
	 * find the clones, but dsl_deadlist_remove_key() is a no-op so it
	 * doesn't matter.
	 */
	if (FUNC5(ds->ds_dir)->dd_clones == 0)
		return;

	for (FUNC8(&zc, mos, FUNC5(ds->ds_dir)->dd_clones);
	    FUNC9(&zc, &za) == 0;
	    FUNC6(&zc)) {
		dsl_dataset_t *clone;

		FUNC0(FUNC1(ds->ds_dir->dd_pool,
		    za.za_first_integer, FTAG, &clone));
		if (clone->ds_dir->dd_origin_txg > mintxg) {
			FUNC4(&clone->ds_deadlist,
			    mintxg, tx);
			if (FUNC3(clone)) {
				FUNC4(
				    &clone->ds_remap_deadlist, mintxg, tx);
			}
			FUNC10(clone, mintxg, tx);
		}
		FUNC2(clone, FTAG);
	}
	FUNC7(&zc);
}