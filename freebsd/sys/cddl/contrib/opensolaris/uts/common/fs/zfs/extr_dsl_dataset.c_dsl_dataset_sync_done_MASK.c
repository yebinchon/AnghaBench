#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/ * os_synced_dnodes; } ;
typedef  TYPE_1__ objset_t ;
struct TYPE_7__ {int /*<<< orphan*/  ds_dbuf; int /*<<< orphan*/  ds_deadlist; int /*<<< orphan*/  ds_pending_deadlist; TYPE_1__* ds_objset; } ;
typedef  TYPE_2__ dsl_dataset_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  deadlist_enqueue_cb ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void
FUNC6(dsl_dataset_t *ds, dmu_tx_t *tx)
{
	objset_t *os = ds->ds_objset;

	FUNC1(&ds->ds_pending_deadlist,
	    deadlist_enqueue_cb, &ds->ds_deadlist, tx);

	if (os->os_synced_dnodes != NULL) {
		FUNC5(os->os_synced_dnodes);
		os->os_synced_dnodes = NULL;
	}

	FUNC0(!FUNC3(os, FUNC4(tx)));

	FUNC2(ds->ds_dbuf, ds);
}