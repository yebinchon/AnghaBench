#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {scalar_t__ zb_level; scalar_t__ zb_blkid; scalar_t__ zb_object; scalar_t__ zb_objset; } ;
typedef  TYPE_2__ zbookmark_phys_t ;
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  longlong_t ;
typedef  scalar_t__ int64_t ;
struct TYPE_11__ {scalar_t__ ddb_cursor; scalar_t__ ddb_checksum; scalar_t__ ddb_type; scalar_t__ ddb_class; } ;
struct TYPE_14__ {scalar_t__ scn_func; TYPE_1__ scn_ddt_bookmark; TYPE_2__ scn_bookmark; } ;
struct TYPE_13__ {scalar_t__ scn_suspending; TYPE_4__ scn_phys; TYPE_5__* scn_dp; scalar_t__ scn_sync_start_time; } ;
typedef  TYPE_3__ dsl_scan_t ;
typedef  TYPE_4__ dsl_scan_phys_t ;
typedef  scalar_t__ boolean_t ;
struct TYPE_16__ {scalar_t__ spa_sync_starttime; } ;
struct TYPE_15__ {int dp_dirty_total; TYPE_6__* dp_spa; } ;

/* Variables and functions */
 scalar_t__ B_FALSE ; 
 scalar_t__ B_TRUE ; 
 int FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ POOL_SCAN_RESILVER ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_3__*) ; 
 scalar_t__ FUNC5 () ; 
 scalar_t__ FUNC6 (TYPE_6__*) ; 
 scalar_t__ FUNC7 (TYPE_5__*) ; 
 int zfs_dirty_data_max ; 
 int zfs_resilver_min_time_ms ; 
 scalar_t__ zfs_scan_strict_mem_lim ; 
 int zfs_scrub_min_time_ms ; 
 scalar_t__ zfs_txg_timeout ; 
 int zfs_vdev_async_write_active_min_dirty_percent ; 

__attribute__((used)) static boolean_t
FUNC8(dsl_scan_t *scn, const zbookmark_phys_t *zb)
{
	/* we never skip user/group accounting objects */
	if (zb && (int64_t)zb->zb_object < 0)
		return (B_FALSE);

	if (scn->scn_suspending)
		return (B_TRUE); /* we're already suspending */

	if (!FUNC2(&scn->scn_phys.scn_bookmark))
		return (B_FALSE); /* we're resuming */

	/* We only know how to resume from level-0 blocks. */
	if (zb && zb->zb_level != 0)
		return (B_FALSE);

	/*
	 * We suspend if:
	 *  - we have scanned for at least the minimum time (default 1 sec
	 *    for scrub, 3 sec for resilver), and either we have sufficient
	 *    dirty data that we are starting to write more quickly
	 *    (default 30%), or someone is explicitly waiting for this txg
	 *    to complete.
	 *  or
	 *  - the spa is shutting down because this pool is being exported
	 *    or the machine is rebooting.
	 *  or
	 *  - the scan queue has reached its memory use limit
	 */
	uint64_t elapsed_nanosecs = FUNC5();
	uint64_t curr_time_ns = FUNC5();
	uint64_t scan_time_ns = curr_time_ns - scn->scn_sync_start_time;
	uint64_t sync_time_ns = curr_time_ns -
	    scn->scn_dp->dp_spa->spa_sync_starttime;

	int dirty_pct = scn->scn_dp->dp_dirty_total * 100 / zfs_dirty_data_max;
	int mintime = (scn->scn_phys.scn_func == POOL_SCAN_RESILVER) ?
	    zfs_resilver_min_time_ms : zfs_scrub_min_time_ms;

	if ((FUNC0(scan_time_ns) > mintime &&
            (dirty_pct >= zfs_vdev_async_write_active_min_dirty_percent ||
            FUNC7(scn->scn_dp) ||
            FUNC1(sync_time_ns) >= zfs_txg_timeout)) ||
            FUNC6(scn->scn_dp->dp_spa) ||
	    (zfs_scan_strict_mem_lim && FUNC4(scn))) {
		if (zb) {
			FUNC3("suspending at bookmark %llx/%llx/%llx/%llx\n",
			    (longlong_t)zb->zb_objset,
			    (longlong_t)zb->zb_object,
			    (longlong_t)zb->zb_level,
			    (longlong_t)zb->zb_blkid);
			scn->scn_phys.scn_bookmark = *zb;
		} else {
			dsl_scan_phys_t *scnp = &scn->scn_phys;

			FUNC3("suspending at at DDT bookmark "
			    "%llx/%llx/%llx/%llx\n",
			    (longlong_t)scnp->scn_ddt_bookmark.ddb_class,
			    (longlong_t)scnp->scn_ddt_bookmark.ddb_type,
			    (longlong_t)scnp->scn_ddt_bookmark.ddb_checksum,
			    (longlong_t)scnp->scn_ddt_bookmark.ddb_cursor);
		}
		scn->scn_suspending = B_TRUE;
		return (B_TRUE);
	}
	return (B_FALSE);
}