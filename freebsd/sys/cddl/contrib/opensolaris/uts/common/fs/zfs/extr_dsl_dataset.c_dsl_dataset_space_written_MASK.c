#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  dsl_pool_t ;
struct TYPE_10__ {scalar_t__ ds_object; int /*<<< orphan*/  ds_deadlist; TYPE_1__* ds_dir; } ;
typedef  TYPE_2__ dsl_dataset_t ;
struct TYPE_11__ {scalar_t__ ds_referenced_bytes; scalar_t__ ds_compressed_bytes; scalar_t__ ds_uncompressed_bytes; scalar_t__ ds_prev_snap_txg; scalar_t__ ds_creation_txg; scalar_t__ ds_prev_snap_obj; } ;
struct TYPE_9__ {int /*<<< orphan*/ * dd_pool; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FTAG ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,TYPE_2__**) ; 
 TYPE_6__* FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__*,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,scalar_t__*,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

int
FUNC8(dsl_dataset_t *oldsnap, dsl_dataset_t *new,
    uint64_t *usedp, uint64_t *compp, uint64_t *uncompp)
{
	int err = 0;
	uint64_t snapobj;
	dsl_pool_t *dp = new->ds_dir->dd_pool;

	FUNC0(FUNC7(dp));

	*usedp = 0;
	*usedp += FUNC3(new)->ds_referenced_bytes;
	*usedp -= FUNC3(oldsnap)->ds_referenced_bytes;

	*compp = 0;
	*compp += FUNC3(new)->ds_compressed_bytes;
	*compp -= FUNC3(oldsnap)->ds_compressed_bytes;

	*uncompp = 0;
	*uncompp += FUNC3(new)->ds_uncompressed_bytes;
	*uncompp -= FUNC3(oldsnap)->ds_uncompressed_bytes;

	snapobj = new->ds_object;
	while (snapobj != oldsnap->ds_object) {
		dsl_dataset_t *snap;
		uint64_t used, comp, uncomp;

		if (snapobj == new->ds_object) {
			snap = new;
		} else {
			err = FUNC2(dp, snapobj, FTAG, &snap);
			if (err != 0)
				break;
		}

		if (FUNC3(snap)->ds_prev_snap_txg ==
		    FUNC3(oldsnap)->ds_creation_txg) {
			/*
			 * The blocks in the deadlist can not be born after
			 * ds_prev_snap_txg, so get the whole deadlist space,
			 * which is more efficient (especially for old-format
			 * deadlists).  Unfortunately the deadlist code
			 * doesn't have enough information to make this
			 * optimization itself.
			 */
			FUNC5(&snap->ds_deadlist,
			    &used, &comp, &uncomp);
		} else {
			FUNC6(&snap->ds_deadlist,
			    0, FUNC3(oldsnap)->ds_creation_txg,
			    &used, &comp, &uncomp);
		}
		*usedp += used;
		*compp += comp;
		*uncompp += uncomp;

		/*
		 * If we get to the beginning of the chain of snapshots
		 * (ds_prev_snap_obj == 0) before oldsnap, then oldsnap
		 * was not a snapshot of/before new.
		 */
		snapobj = FUNC3(snap)->ds_prev_snap_obj;
		if (snap != new)
			FUNC4(snap, FTAG);
		if (snapobj == 0) {
			err = FUNC1(EINVAL);
			break;
		}

	}
	return (err);
}