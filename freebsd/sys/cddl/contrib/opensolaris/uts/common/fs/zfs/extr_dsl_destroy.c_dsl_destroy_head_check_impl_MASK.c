#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_8__ ;
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  objset_t ;
struct TYPE_11__ {scalar_t__ ds_object; TYPE_8__* ds_prev; TYPE_4__* ds_dir; int /*<<< orphan*/  ds_longholds; scalar_t__ ds_is_snapshot; } ;
typedef  TYPE_2__ dsl_dataset_t ;
struct TYPE_15__ {scalar_t__ ds_userrefs; int /*<<< orphan*/  ds_longholds; } ;
struct TYPE_14__ {scalar_t__ ds_next_snap_obj; int ds_num_children; } ;
struct TYPE_13__ {TYPE_1__* dd_pool; } ;
struct TYPE_12__ {int /*<<< orphan*/  dd_child_dir_zapobj; } ;
struct TYPE_10__ {int /*<<< orphan*/ * dp_meta_objset; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (TYPE_8__*) ; 
 int /*<<< orphan*/  EBUSY ; 
 int /*<<< orphan*/  EEXIST ; 
 int /*<<< orphan*/  EINVAL ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_7__* FUNC3 (TYPE_8__*) ; 
 scalar_t__ FUNC4 (TYPE_4__*) ; 
 TYPE_3__* FUNC5 (TYPE_4__*) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

int
FUNC9(dsl_dataset_t *ds, int expected_holds)
{
	int error;
	uint64_t count;
	objset_t *mos;

	FUNC0(!ds->ds_is_snapshot);
	if (ds->ds_is_snapshot)
		return (FUNC2(EINVAL));

	if (FUNC7(&ds->ds_longholds) != expected_holds)
		return (FUNC2(EBUSY));

	mos = ds->ds_dir->dd_pool->dp_meta_objset;

	/*
	 * Can't delete a head dataset if there are snapshots of it.
	 * (Except if the only snapshots are from the branch we cloned
	 * from.)
	 */
	if (ds->ds_prev != NULL &&
	    FUNC3(ds->ds_prev)->ds_next_snap_obj == ds->ds_object)
		return (FUNC2(EBUSY));

	/*
	 * Can't delete if there are children of this fs.
	 */
	error = FUNC6(mos,
	    FUNC5(ds->ds_dir)->dd_child_dir_zapobj, &count);
	if (error != 0)
		return (error);
	if (count != 0)
		return (FUNC2(EEXIST));

	if (FUNC4(ds->ds_dir) && FUNC1(ds->ds_prev) &&
	    FUNC3(ds->ds_prev)->ds_num_children == 2 &&
	    ds->ds_prev->ds_userrefs == 0) {
		/* We need to remove the origin snapshot as well. */
		if (!FUNC8(&ds->ds_prev->ds_longholds))
			return (FUNC2(EBUSY));
	}
	return (0);
}