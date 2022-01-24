#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  zl_dirty_max_txg; int /*<<< orphan*/  zl_spa; int /*<<< orphan*/  zl_os; TYPE_2__* zl_dmu_pool; } ;
typedef  TYPE_1__ zilog_t ;
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_9__ {int /*<<< orphan*/  dp_dirty_zilogs; } ;
typedef  TYPE_2__ dsl_pool_t ;
struct TYPE_10__ {int /*<<< orphan*/  ds_dbuf; scalar_t__ ds_is_snapshot; } ;
typedef  TYPE_3__ dsl_dataset_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 TYPE_3__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 

void
FUNC7(zilog_t *zilog, uint64_t txg)
{
	dsl_pool_t *dp = zilog->zl_dmu_pool;
	dsl_dataset_t *ds = FUNC3(zilog->zl_os);

	FUNC0(FUNC5(zilog->zl_spa));

	if (ds->ds_is_snapshot)
		FUNC4("dirtying snapshot!");

	if (FUNC6(&dp->dp_dirty_zilogs, zilog, txg)) {
		/* up the hold count until we can be written out */
		FUNC2(ds->ds_dbuf, zilog);

		zilog->zl_dirty_max_txg = FUNC1(txg, zilog->zl_dirty_max_txg);
	}
}