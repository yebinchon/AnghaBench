#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  ds_bp_rwlock; int /*<<< orphan*/  ds_longholds; int /*<<< orphan*/  ds_remap_deadlist_lock; int /*<<< orphan*/  ds_sendstream_lock; int /*<<< orphan*/  ds_opening_lock; int /*<<< orphan*/  ds_lock; int /*<<< orphan*/  ds_prop_cbs; int /*<<< orphan*/  ds_synced_link; scalar_t__ ds_dir; int /*<<< orphan*/  ds_remap_deadlist; int /*<<< orphan*/  ds_deadlist; int /*<<< orphan*/  ds_pending_deadlist; int /*<<< orphan*/ * ds_prev; int /*<<< orphan*/ * ds_objset; int /*<<< orphan*/ * ds_dbuf; int /*<<< orphan*/ * ds_owner; } ;
typedef  TYPE_1__ dsl_dataset_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC15(void *dbu)
{
	dsl_dataset_t *ds = dbu;

	FUNC0(ds->ds_owner == NULL);

	ds->ds_dbuf = NULL;

	if (ds->ds_objset != NULL)
		FUNC2(ds->ds_objset);

	if (ds->ds_prev) {
		FUNC3(ds->ds_prev, ds);
		ds->ds_prev = NULL;
	}

	FUNC1(&ds->ds_pending_deadlist);
	if (FUNC5(&ds->ds_deadlist))
		FUNC4(&ds->ds_deadlist);
	if (FUNC5(&ds->ds_remap_deadlist))
		FUNC4(&ds->ds_remap_deadlist);
	if (ds->ds_dir)
		FUNC6(ds->ds_dir, ds);

	FUNC0(!FUNC9(&ds->ds_synced_link));

	FUNC8(&ds->ds_prop_cbs);
	if (FUNC12(&ds->ds_lock))
		FUNC11(&ds->ds_lock);
	FUNC10(&ds->ds_lock);
	if (FUNC12(&ds->ds_opening_lock))
		FUNC11(&ds->ds_opening_lock);
	FUNC10(&ds->ds_opening_lock);
	FUNC10(&ds->ds_sendstream_lock);
	FUNC10(&ds->ds_remap_deadlist_lock);
	FUNC14(&ds->ds_longholds);
	FUNC13(&ds->ds_bp_rwlock);

	FUNC7(ds, sizeof (dsl_dataset_t));
}