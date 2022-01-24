#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
typedef  scalar_t__ int64_t ;
typedef  size_t arc_buf_contents_t ;
struct TYPE_6__ {int /*<<< orphan*/ * arcs_esize; } ;

/* Variables and functions */
 size_t ARC_BUFC_DATA ; 
 size_t ARC_BUFC_METADATA ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,scalar_t__,size_t) ; 
 scalar_t__ arc_meta_limit ; 
 TYPE_1__* arc_mfu ; 
 TYPE_1__* arc_mfu_ghost ; 
 TYPE_1__* arc_mru ; 
 TYPE_1__* arc_mru_ghost ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  zfs_arc_meta_adjust_restarts ; 
 scalar_t__ zfs_arc_meta_prune ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static uint64_t
FUNC5(uint64_t meta_used)
{
	int64_t delta, prune = 0, adjustmnt;
	uint64_t total_evicted = 0;
	arc_buf_contents_t type = ARC_BUFC_DATA;
	int restarts = FUNC0(zfs_arc_meta_adjust_restarts, 0);

restart:
	/*
	 * This slightly differs than the way we evict from the mru in
	 * arc_adjust because we don't have a "target" value (i.e. no
	 * "meta" arc_p). As a result, I think we can completely
	 * cannibalize the metadata in the MRU before we evict the
	 * metadata from the MFU. I think we probably need to implement a
	 * "metadata arc_p" value to do this properly.
	 */
	adjustmnt = meta_used - arc_meta_limit;

	if (adjustmnt > 0 &&
	    FUNC4(&arc_mru->arcs_esize[type]) > 0) {
		delta = FUNC1(FUNC4(&arc_mru->arcs_esize[type]),
		    adjustmnt);
		total_evicted += FUNC2(arc_mru, 0, delta, type);
		adjustmnt -= delta;
	}

	/*
	 * We can't afford to recalculate adjustmnt here. If we do,
	 * new metadata buffers can sneak into the MRU or ANON lists,
	 * thus penalize the MFU metadata. Although the fudge factor is
	 * small, it has been empirically shown to be significant for
	 * certain workloads (e.g. creating many empty directories). As
	 * such, we use the original calculation for adjustmnt, and
	 * simply decrement the amount of data evicted from the MRU.
	 */

	if (adjustmnt > 0 &&
	    FUNC4(&arc_mfu->arcs_esize[type]) > 0) {
		delta = FUNC1(FUNC4(&arc_mfu->arcs_esize[type]),
		    adjustmnt);
		total_evicted += FUNC2(arc_mfu, 0, delta, type);
	}

	adjustmnt = meta_used - arc_meta_limit;

	if (adjustmnt > 0 &&
	    FUNC4(&arc_mru_ghost->arcs_esize[type]) > 0) {
		delta = FUNC1(adjustmnt,
		    FUNC4(&arc_mru_ghost->arcs_esize[type]));
		total_evicted += FUNC2(arc_mru_ghost, 0, delta, type);
		adjustmnt -= delta;
	}

	if (adjustmnt > 0 &&
	    FUNC4(&arc_mfu_ghost->arcs_esize[type]) > 0) {
		delta = FUNC1(adjustmnt,
		    FUNC4(&arc_mfu_ghost->arcs_esize[type]));
		total_evicted += FUNC2(arc_mfu_ghost, 0, delta, type);
	}

	/*
	 * If after attempting to make the requested adjustment to the ARC
	 * the meta limit is still being exceeded then request that the
	 * higher layers drop some cached objects which have holds on ARC
	 * meta buffers.  Requests to the upper layers will be made with
	 * increasingly large scan sizes until the ARC is below the limit.
	 */
	if (meta_used > arc_meta_limit) {
		if (type == ARC_BUFC_DATA) {
			type = ARC_BUFC_METADATA;
		} else {
			type = ARC_BUFC_DATA;

			if (zfs_arc_meta_prune) {
				prune += zfs_arc_meta_prune;
				FUNC3(prune);
			}
		}

		if (restarts > 0) {
			restarts--;
			goto restart;
		}
	}
	return (total_evicted);
}