#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_7__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  dsl_pool_t ;
struct TYPE_11__ {TYPE_7__* ds_dir; scalar_t__ ds_is_snapshot; } ;
typedef  TYPE_1__ dsl_dataset_t ;
struct TYPE_12__ {char* dds_origin; scalar_t__ dds_num_clones; int /*<<< orphan*/  dds_is_snapshot; int /*<<< orphan*/  dds_guid; int /*<<< orphan*/  dds_inconsistent; int /*<<< orphan*/  dds_creation_txg; } ;
typedef  TYPE_2__ dmu_objset_stats_t ;
struct TYPE_13__ {int /*<<< orphan*/ * dd_pool; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  B_TRUE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_7__*,char*) ; 
 scalar_t__ FUNC2 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 scalar_t__ FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void
FUNC8(dsl_dataset_t *ds, dmu_objset_stats_t *stat)
{
	dsl_pool_t *dp = ds->ds_dir->dd_pool;
	FUNC0(FUNC7(dp));

	stat->dds_creation_txg = FUNC3(ds);
	stat->dds_inconsistent = FUNC5(ds);
	stat->dds_guid = FUNC4(ds);
	stat->dds_origin[0] = '\0';
	if (ds->ds_is_snapshot) {
		stat->dds_is_snapshot = B_TRUE;
		stat->dds_num_clones = FUNC6(ds);
	} else {
		stat->dds_is_snapshot = B_FALSE;
		stat->dds_num_clones = 0;

		if (FUNC2(ds->ds_dir)) {
			FUNC1(ds->ds_dir, stat->dds_origin);
		}
	}
}