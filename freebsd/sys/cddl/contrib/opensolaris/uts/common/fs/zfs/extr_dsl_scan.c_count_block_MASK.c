#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_6__ ;
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct TYPE_19__ {int /*<<< orphan*/  zb_ditto_3_of_3_samevdev; int /*<<< orphan*/  zb_ditto_2_of_3_samevdev; int /*<<< orphan*/  zb_ditto_2_of_2_samevdev; int /*<<< orphan*/  zb_gangs; int /*<<< orphan*/  zb_psize; int /*<<< orphan*/  zb_lsize; int /*<<< orphan*/  zb_asize; int /*<<< orphan*/  zb_count; } ;
typedef  TYPE_3__ zfs_blkstat_t ;
struct TYPE_20__ {int /*<<< orphan*/  zab_lock; TYPE_3__** zab_type; } ;
typedef  TYPE_4__ zfs_all_blkstats_t ;
struct TYPE_21__ {TYPE_2__* scn_dp; } ;
typedef  TYPE_5__ dsl_scan_t ;
struct TYPE_22__ {int /*<<< orphan*/ * blk_dva; } ;
typedef  TYPE_6__ blkptr_t ;
struct TYPE_18__ {TYPE_1__* dp_spa; } ;
struct TYPE_17__ {int /*<<< orphan*/  spa_scan_pass_issued; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_6__ const*) ; 
 scalar_t__ FUNC1 (TYPE_6__ const*) ; 
 int FUNC2 (TYPE_6__ const*) ; 
 scalar_t__ FUNC3 (TYPE_6__ const*) ; 
 int FUNC4 (TYPE_6__ const*) ; 
 scalar_t__ FUNC5 (TYPE_6__ const*) ; 
 int FUNC6 (TYPE_6__ const*) ; 
 int DMU_OT_NEWTYPE ; 
 int DMU_OT_OTHER ; 
 int DMU_OT_TOTAL ; 
 int DN_MAX_LEVELS ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC12(dsl_scan_t *scn, zfs_all_blkstats_t *zab, const blkptr_t *bp)
{
	int i;

	/* update the spa's stats on how many bytes we have issued */
	for (i = 0; i < FUNC4(bp); i++) {
		FUNC9(&scn->scn_dp->dp_spa->spa_scan_pass_issued,
		    FUNC7(&bp->blk_dva[i]));
	}

	/*
	 * If we resume after a reboot, zab will be NULL; don't record
	 * incomplete stats in that case.
	 */
	if (zab == NULL)
		return;

	FUNC10(&zab->zab_lock);

	for (i = 0; i < 4; i++) {
		int l = (i < 2) ? FUNC2(bp) : DN_MAX_LEVELS;
		int t = (i & 1) ? FUNC6(bp) : DMU_OT_TOTAL;
		if (t & DMU_OT_NEWTYPE)
			t = DMU_OT_OTHER;
		zfs_blkstat_t *zb = &zab->zab_type[l][t];
		int equal;

		zb->zb_count++;
		zb->zb_asize += FUNC1(bp);
		zb->zb_lsize += FUNC3(bp);
		zb->zb_psize += FUNC5(bp);
		zb->zb_gangs += FUNC0(bp);

		switch (FUNC4(bp)) {
		case 2:
			if (FUNC8(&bp->blk_dva[0]) ==
			    FUNC8(&bp->blk_dva[1]))
				zb->zb_ditto_2_of_2_samevdev++;
			break;
		case 3:
			equal = (FUNC8(&bp->blk_dva[0]) ==
			    FUNC8(&bp->blk_dva[1])) +
			    (FUNC8(&bp->blk_dva[0]) ==
			    FUNC8(&bp->blk_dva[2])) +
			    (FUNC8(&bp->blk_dva[1]) ==
			    FUNC8(&bp->blk_dva[2]));
			if (equal == 1)
				zb->zb_ditto_2_of_3_samevdev++;
			else if (equal == 3)
				zb->zb_ditto_3_of_3_samevdev++;
			break;
		}
	}

	FUNC11(&zab->zab_lock);
}