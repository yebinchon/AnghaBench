#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  dsl_pool_t ;
struct TYPE_9__ {int /*<<< orphan*/  dd_pool; scalar_t__ dd_parent; int /*<<< orphan*/  dd_lock; } ;
typedef  TYPE_1__ dsl_dir_t ;
struct TYPE_10__ {int /*<<< orphan*/  ddsqra_value; int /*<<< orphan*/  ddsqra_source; int /*<<< orphan*/  ddsqra_name; } ;
typedef  TYPE_2__ dsl_dir_set_qr_arg_t ;
struct TYPE_11__ {TYPE_1__* ds_dir; } ;
typedef  TYPE_3__ dsl_dataset_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;
struct TYPE_12__ {scalar_t__ dd_used_bytes; scalar_t__ dd_reserved; scalar_t__ dd_quota; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOSPC ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FTAG ; 
 scalar_t__ FUNC0 (scalar_t__,scalar_t__) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ZFS_PROP_RESERVATION ; 
 int /*<<< orphan*/  ZFS_SPACE_CHECK_NORMAL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__**) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC6 (TYPE_1__*) ; 
 scalar_t__ FUNC7 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

int
FUNC13(void *arg, dmu_tx_t *tx)
{
	dsl_dir_set_qr_arg_t *ddsqra = arg;
	dsl_pool_t *dp = FUNC3(tx);
	dsl_dataset_t *ds;
	dsl_dir_t *dd;
	uint64_t newval, used, avail;
	int error;

	error = FUNC4(dp, ddsqra->ddsqra_name, FTAG, &ds);
	if (error != 0)
		return (error);
	dd = ds->ds_dir;

	/*
	 * If we are doing the preliminary check in open context, the
	 * space estimates may be inaccurate.
	 */
	if (!FUNC2(tx)) {
		FUNC5(ds, FTAG);
		return (0);
	}

	error = FUNC9(ds->ds_dir,
	    FUNC12(ZFS_PROP_RESERVATION),
	    ddsqra->ddsqra_source, ddsqra->ddsqra_value, &newval);
	if (error != 0) {
		FUNC5(ds, FTAG);
		return (error);
	}

	FUNC10(&dd->dd_lock);
	used = FUNC6(dd)->dd_used_bytes;
	FUNC11(&dd->dd_lock);

	if (dd->dd_parent) {
		avail = FUNC7(dd->dd_parent,
		    NULL, 0, FALSE);
	} else {
		avail = FUNC8(dd->dd_pool,
		    ZFS_SPACE_CHECK_NORMAL) - used;
	}

	if (FUNC0(used, newval) > FUNC0(used, FUNC6(dd)->dd_reserved)) {
		uint64_t delta = FUNC0(used, newval) -
		    FUNC0(used, FUNC6(dd)->dd_reserved);

		if (delta > avail ||
		    (FUNC6(dd)->dd_quota > 0 &&
		    newval > FUNC6(dd)->dd_quota))
			error = FUNC1(ENOSPC);
	}

	FUNC5(ds, FTAG);
	return (error);
}