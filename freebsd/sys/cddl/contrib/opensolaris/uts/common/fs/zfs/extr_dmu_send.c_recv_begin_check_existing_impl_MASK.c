#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_28__   TYPE_9__ ;
typedef  struct TYPE_27__   TYPE_6__ ;
typedef  struct TYPE_26__   TYPE_5__ ;
typedef  struct TYPE_25__   TYPE_4__ ;
typedef  struct TYPE_24__   TYPE_3__ ;
typedef  struct TYPE_23__   TYPE_2__ ;
typedef  struct TYPE_22__   TYPE_1__ ;
typedef  struct TYPE_21__   TYPE_13__ ;
typedef  struct TYPE_20__   TYPE_10__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
struct TYPE_25__ {TYPE_3__* dp_origin_snap; int /*<<< orphan*/  dp_meta_objset; } ;
typedef  TYPE_4__ dsl_pool_t ;
struct TYPE_26__ {TYPE_1__* ds_prev; TYPE_9__* ds_dir; } ;
typedef  TYPE_5__ dsl_dataset_t ;
struct TYPE_27__ {scalar_t__ drba_snapobj; TYPE_2__* drba_cookie; int /*<<< orphan*/  drba_cred; } ;
typedef  TYPE_6__ dmu_recv_begin_arg_t ;
struct TYPE_28__ {TYPE_4__* dd_pool; } ;
struct TYPE_24__ {scalar_t__ ds_object; } ;
struct TYPE_23__ {scalar_t__ drc_force; int /*<<< orphan*/  drc_tosnap; } ;
struct TYPE_22__ {scalar_t__ ds_object; } ;
struct TYPE_21__ {scalar_t__ ds_prev_snap_obj; scalar_t__ ds_guid; int /*<<< orphan*/  ds_snapnames_zapobj; } ;
struct TYPE_20__ {int /*<<< orphan*/  dd_child_dir_zapobj; } ;

/* Variables and functions */
 int /*<<< orphan*/  EBUSY ; 
 int /*<<< orphan*/  EEXIST ; 
 int /*<<< orphan*/  ENODEV ; 
 int ENOENT ; 
 int /*<<< orphan*/  ETXTBSY ; 
 int /*<<< orphan*/  FTAG ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ZFS_PROP_SNAPSHOT_LIMIT ; 
 scalar_t__ FUNC1 (TYPE_5__*) ; 
 int FUNC2 (TYPE_4__*,scalar_t__,int /*<<< orphan*/ ,TYPE_5__**) ; 
 scalar_t__ FUNC3 (TYPE_5__*,TYPE_5__*) ; 
 TYPE_13__* FUNC4 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 TYPE_10__* FUNC6 (TYPE_9__*) ; 
 int FUNC7 (TYPE_9__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  recv_clone_name ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,scalar_t__*) ; 

__attribute__((used)) static int
FUNC9(dmu_recv_begin_arg_t *drba, dsl_dataset_t *ds,
    uint64_t fromguid)
{
	uint64_t val;
	int error;
	dsl_pool_t *dp = ds->ds_dir->dd_pool;

	/* Temporary clone name must not exist. */
	error = FUNC8(dp->dp_meta_objset,
	    FUNC6(ds->ds_dir)->dd_child_dir_zapobj, recv_clone_name,
	    8, 1, &val);
	if (error != ENOENT)
		return (error == 0 ? FUNC0(EBUSY) : error);

	/* Resume state must not be set. */
	if (FUNC1(ds))
		return (FUNC0(EBUSY));

	/* New snapshot name must not exist. */
	error = FUNC8(dp->dp_meta_objset,
	    FUNC4(ds)->ds_snapnames_zapobj,
	    drba->drba_cookie->drc_tosnap, 8, 1, &val);
	if (error != ENOENT)
		return (error == 0 ? FUNC0(EEXIST) : error);

	/*
	 * Check snapshot limit before receiving. We'll recheck again at the
	 * end, but might as well abort before receiving if we're already over
	 * the limit.
	 *
	 * Note that we do not check the file system limit with
	 * dsl_dir_fscount_check because the temporary %clones don't count
	 * against that limit.
	 */
	error = FUNC7(ds->ds_dir, 1, ZFS_PROP_SNAPSHOT_LIMIT,
	    NULL, drba->drba_cred);
	if (error != 0)
		return (error);

	if (fromguid != 0) {
		dsl_dataset_t *snap;
		uint64_t obj = FUNC4(ds)->ds_prev_snap_obj;

		/* Find snapshot in this dir that matches fromguid. */
		while (obj != 0) {
			error = FUNC2(dp, obj, FTAG,
			    &snap);
			if (error != 0)
				return (FUNC0(ENODEV));
			if (snap->ds_dir != ds->ds_dir) {
				FUNC5(snap, FTAG);
				return (FUNC0(ENODEV));
			}
			if (FUNC4(snap)->ds_guid == fromguid)
				break;
			obj = FUNC4(snap)->ds_prev_snap_obj;
			FUNC5(snap, FTAG);
		}
		if (obj == 0)
			return (FUNC0(ENODEV));

		if (drba->drba_cookie->drc_force) {
			drba->drba_snapobj = obj;
		} else {
			/*
			 * If we are not forcing, there must be no
			 * changes since fromsnap.
			 */
			if (FUNC3(ds, snap)) {
				FUNC5(snap, FTAG);
				return (FUNC0(ETXTBSY));
			}
			drba->drba_snapobj = ds->ds_prev->ds_object;
		}

		FUNC5(snap, FTAG);
	} else {
		/* if full, then must be forced */
		if (!drba->drba_cookie->drc_force)
			return (FUNC0(EEXIST));
		/* start from $ORIGIN@$ORIGIN, if supported */
		drba->drba_snapobj = dp->dp_origin_snap != NULL ?
		    dp->dp_origin_snap->ds_object : 0;
	}

	return (0);

}