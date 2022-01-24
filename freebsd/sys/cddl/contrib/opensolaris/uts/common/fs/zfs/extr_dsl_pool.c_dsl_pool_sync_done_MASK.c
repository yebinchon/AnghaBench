#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  zl_os; } ;
typedef  TYPE_1__ zilog_t ;
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_11__ {int /*<<< orphan*/  dp_meta_objset; int /*<<< orphan*/  dp_dirty_zilogs; } ;
typedef  TYPE_2__ dsl_pool_t ;
struct TYPE_12__ {int /*<<< orphan*/  ds_dbuf; } ;
typedef  TYPE_3__ dsl_dataset_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 

void
FUNC7(dsl_pool_t *dp, uint64_t txg)
{
	zilog_t *zilog;

	while ((zilog = FUNC4(&dp->dp_dirty_zilogs, txg))) {
		dsl_dataset_t *ds = FUNC2(zilog->zl_os);
		/*
		 * We don't remove the zilog from the dp_dirty_zilogs
		 * list until after we've cleaned it. This ensures that
		 * callers of zilog_is_dirty() receive an accurate
		 * answer when they are racing with the spa sync thread.
		 */
		FUNC6(zilog, txg);
		(void) FUNC5(&dp->dp_dirty_zilogs, zilog, txg);
		FUNC0(!FUNC3(zilog->zl_os, txg));
		FUNC1(ds->ds_dbuf, zilog);
	}
	FUNC0(!FUNC3(dp->dp_meta_objset, txg));
}