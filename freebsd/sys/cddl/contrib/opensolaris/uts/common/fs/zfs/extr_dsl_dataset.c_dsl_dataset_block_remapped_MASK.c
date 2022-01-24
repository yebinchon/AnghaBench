#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_5__ ;
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;
typedef  struct TYPE_18__   TYPE_10__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  spa_t ;
typedef  int /*<<< orphan*/  dva_t ;
struct TYPE_21__ {int /*<<< orphan*/  ds_remap_deadlist; int /*<<< orphan*/  ds_remap_deadlist_lock; int /*<<< orphan*/  ds_is_snapshot; TYPE_2__* ds_dir; } ;
typedef  TYPE_3__ dsl_dataset_t ;
struct TYPE_22__ {scalar_t__ tx_txg; } ;
typedef  TYPE_4__ dmu_tx_t ;
struct TYPE_23__ {scalar_t__ blk_birth; int /*<<< orphan*/ * blk_dva; } ;
typedef  TYPE_5__ blkptr_t ;
struct TYPE_20__ {TYPE_1__* dd_pool; } ;
struct TYPE_19__ {int /*<<< orphan*/ * dp_spa; } ;
struct TYPE_18__ {scalar_t__ ds_prev_snap_txg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 
 int FUNC5 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,TYPE_4__*) ; 
 TYPE_10__* FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,TYPE_5__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,scalar_t__,scalar_t__,scalar_t__,TYPE_4__*) ; 

void
FUNC13(dsl_dataset_t *ds, uint64_t vdev, uint64_t offset,
    uint64_t size, uint64_t birth, dmu_tx_t *tx)
{
	spa_t *spa = ds->ds_dir->dd_pool->dp_spa;

	FUNC0(FUNC5(tx));
	FUNC0(birth <= tx->tx_txg);
	FUNC0(!ds->ds_is_snapshot);

	if (birth > FUNC7(ds)->ds_prev_snap_txg) {
		FUNC12(spa, vdev, offset, size, tx);
	} else {
		blkptr_t fakebp;
		dva_t *dva = &fakebp.blk_dva[0];

		FUNC0(ds != NULL);

		FUNC10(&ds->ds_remap_deadlist_lock);
		if (!FUNC8(ds)) {
			FUNC6(ds, tx);
		}
		FUNC11(&ds->ds_remap_deadlist_lock);

		FUNC1(&fakebp);
		fakebp.blk_birth = birth;
		FUNC4(dva, vdev);
		FUNC3(dva, offset);
		FUNC2(dva, size);

		FUNC9(&ds->ds_remap_deadlist, &fakebp, tx);
	}
}