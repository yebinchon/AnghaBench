#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  objset_t ;
struct TYPE_10__ {int /*<<< orphan*/ * dp_meta_objset; } ;
typedef  TYPE_1__ dsl_pool_t ;
struct TYPE_11__ {int /*<<< orphan*/  ds_object; TYPE_6__* ds_dir; } ;
typedef  TYPE_2__ dsl_dataset_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;
struct TYPE_13__ {int /*<<< orphan*/  dd_dbuf; } ;
struct TYPE_12__ {scalar_t__ dd_origin_obj; scalar_t__ dd_clones; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMU_OT_DSL_CLONES ; 
 int /*<<< orphan*/  DMU_OT_NONE ; 
 int /*<<< orphan*/  FTAG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,scalar_t__,int /*<<< orphan*/ ,TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC4 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC7(dsl_pool_t *dp, dsl_dataset_t *ds, void *arg)
{
	dmu_tx_t *tx = arg;
	objset_t *mos = dp->dp_meta_objset;

	if (FUNC4(ds->ds_dir)->dd_origin_obj != 0) {
		dsl_dataset_t *origin;

		FUNC0(FUNC2(dp,
		    FUNC4(ds->ds_dir)->dd_origin_obj, FTAG, &origin));

		if (FUNC4(origin->ds_dir)->dd_clones == 0) {
			FUNC1(origin->ds_dir->dd_dbuf, tx);
			FUNC4(origin->ds_dir)->dd_clones =
			    FUNC6(mos, DMU_OT_DSL_CLONES, DMU_OT_NONE,
			    0, tx);
		}

		FUNC0(FUNC5(dp->dp_meta_objset,
		    FUNC4(origin->ds_dir)->dd_clones,
		    ds->ds_object, tx));

		FUNC3(origin, FTAG);
	}
	return (0);
}