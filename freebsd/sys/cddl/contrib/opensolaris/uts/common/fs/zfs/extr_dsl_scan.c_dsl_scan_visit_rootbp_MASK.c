#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {int /*<<< orphan*/  zb_objset; } ;
typedef  TYPE_2__ zbookmark_phys_t ;
typedef  int /*<<< orphan*/  scan_prefetch_ctx_t ;
struct TYPE_15__ {TYPE_2__ scn_bookmark; } ;
struct TYPE_17__ {int /*<<< orphan*/  scn_objsets_visited_this_txg; TYPE_1__ scn_phys; TYPE_2__ scn_prefetch_bookmark; } ;
typedef  TYPE_3__ dsl_scan_t ;
struct TYPE_18__ {int /*<<< orphan*/  ds_object; } ;
typedef  TYPE_4__ dsl_dataset_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;
typedef  int /*<<< orphan*/  blkptr_t ;

/* Variables and functions */
 int /*<<< orphan*/  DMU_META_OBJSET ; 
 int /*<<< orphan*/  DMU_OST_NONE ; 
 int /*<<< orphan*/  FTAG ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  ZB_ROOT_BLKID ; 
 int /*<<< orphan*/  ZB_ROOT_LEVEL ; 
 int /*<<< orphan*/  ZB_ROOT_OBJECT ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *,TYPE_4__*,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(dsl_scan_t *scn, dsl_dataset_t *ds, blkptr_t *bp,
    dmu_tx_t *tx)
{
	zbookmark_phys_t zb;
	scan_prefetch_ctx_t *spc;

	FUNC0(&zb, ds ? ds->ds_object : DMU_META_OBJSET,
	    ZB_ROOT_OBJECT, ZB_ROOT_LEVEL, ZB_ROOT_BLKID);

	if (FUNC1(&scn->scn_phys.scn_bookmark)) {
		FUNC0(&scn->scn_prefetch_bookmark,
		    zb.zb_objset, 0, 0, 0);
	} else {
		scn->scn_prefetch_bookmark = scn->scn_phys.scn_bookmark;
	}

	scn->scn_objsets_visited_this_txg++;

	spc = FUNC5(scn, NULL, FTAG);
	FUNC3(spc, bp, &zb);
	FUNC6(spc, FTAG);

	FUNC4(bp, &zb, NULL, ds, scn, DMU_OST_NONE, tx);

	FUNC2(ds, "finished scan%s", "");
}