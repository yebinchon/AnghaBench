#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  spa_t ;
struct TYPE_10__ {int /*<<< orphan*/  sds_txg; int /*<<< orphan*/  sds_dsobj; } ;
typedef  TYPE_2__ scan_ds_t ;
struct TYPE_9__ {int /*<<< orphan*/  scn_queue_obj; } ;
struct TYPE_11__ {TYPE_1__ scn_phys; int /*<<< orphan*/  scn_queue; int /*<<< orphan*/  scn_bytes_pending; TYPE_4__* scn_dp; } ;
typedef  TYPE_3__ dsl_scan_t ;
struct TYPE_12__ {int /*<<< orphan*/  dp_meta_objset; int /*<<< orphan*/ * dp_spa; } ;
typedef  TYPE_4__ dsl_pool_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;
typedef  int /*<<< orphan*/  dmu_object_type_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  DMU_OT_NONE ; 
 int /*<<< orphan*/  DMU_OT_SCAN_QUEUE ; 
 int /*<<< orphan*/  DMU_OT_ZAP_OTHER ; 
 scalar_t__ SPA_VERSION_DSL_SCRUB ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC9(dsl_scan_t *scn, dmu_tx_t *tx)
{
	dsl_pool_t *dp = scn->scn_dp;
	spa_t *spa = dp->dp_spa;
	dmu_object_type_t ot = (FUNC6(spa) >= SPA_VERSION_DSL_SCRUB) ?
	    DMU_OT_SCAN_QUEUE : DMU_OT_ZAP_OTHER;

	FUNC1(scn->scn_bytes_pending);
	FUNC0(scn->scn_phys.scn_queue_obj != 0);

	FUNC3(FUNC5(dp->dp_meta_objset,
	    scn->scn_phys.scn_queue_obj, tx));
	scn->scn_phys.scn_queue_obj = FUNC8(dp->dp_meta_objset, ot,
	    DMU_OT_NONE, 0, tx);
	for (scan_ds_t *sds = FUNC4(&scn->scn_queue);
	    sds != NULL; sds = FUNC2(&scn->scn_queue, sds)) {
		FUNC3(FUNC7(dp->dp_meta_objset,
		    scn->scn_phys.scn_queue_obj, sds->sds_dsobj,
		    sds->sds_txg, tx));
	}
}