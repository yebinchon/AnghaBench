#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zio_alloc_list_t ;
struct TYPE_14__ {scalar_t__ vs_write_errors; int vs_alloc; int vs_space; } ;
struct TYPE_13__ {scalar_t__ vdev_state; scalar_t__ vdev_children; scalar_t__ vdev_asize; unsigned long long vdev_ms_shift; unsigned long long vdev_ashift; int /*<<< orphan*/  vdev_id; TYPE_2__ vdev_stat; TYPE_3__* vdev_mg; } ;
typedef  TYPE_1__ vdev_t ;
typedef  TYPE_2__ vdev_stat_t ;
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  spa_t ;
struct TYPE_15__ {int mg_activation_count; int mg_initialized; int mg_bias; scalar_t__ mg_aliquot; struct TYPE_15__* mg_next; TYPE_4__* mg_class; TYPE_1__* mg_vd; } ;
typedef  TYPE_3__ metaslab_group_t ;
struct TYPE_16__ {scalar_t__ mc_aliquot; int mc_alloc; int mc_space; TYPE_3__* mc_rotor; } ;
typedef  TYPE_4__ metaslab_class_t ;
typedef  int int64_t ;
typedef  int /*<<< orphan*/  dva_t ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ B_FALSE ; 
 scalar_t__ B_TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOSPC ; 
 int /*<<< orphan*/  FTAG ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int METASLAB_GANG_HEADER ; 
 int METASLAB_HINTBP_AVOID ; 
 scalar_t__ FUNC8 (scalar_t__,unsigned long long) ; 
 int /*<<< orphan*/  RW_READER ; 
 int /*<<< orphan*/  SCL_ZIO ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRACE_ENOSPC ; 
 int /*<<< orphan*/  TRACE_FORCE_GANG ; 
 int /*<<< orphan*/  TRACE_NOT_ALLOCATABLE ; 
 int /*<<< orphan*/  TRACE_VDEV_ERROR ; 
 scalar_t__ VDEV_STATE_HEALTHY ; 
 scalar_t__ FUNC10 (scalar_t__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 
 int FUNC12 () ; 
 scalar_t__ ditto_same_vdev_distance_shift ; 
 scalar_t__ metaslab_bias_enabled ; 
 scalar_t__ metaslab_force_ganging ; 
 scalar_t__ FUNC13 (TYPE_3__*,int /*<<< orphan*/ *,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ *,int,int) ; 
 scalar_t__ FUNC14 (TYPE_3__*,TYPE_3__*,scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ *,scalar_t__,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (TYPE_1__*) ; 
 TYPE_1__* FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC20 (TYPE_1__*,scalar_t__) ; 

int
FUNC21(spa_t *spa, metaslab_class_t *mc, uint64_t psize,
    dva_t *dva, int d, dva_t *hintdva, uint64_t txg, int flags,
    zio_alloc_list_t *zal, int allocator)
{
	metaslab_group_t *mg, *rotor;
	vdev_t *vd;
	boolean_t try_hard = B_FALSE;

	FUNC0(!FUNC2(&dva[d]));

	/*
	 * For testing, make some blocks above a certain size be gang blocks.
	 */
	if (psize >= metaslab_force_ganging && (FUNC12() & 3) == 0) {
		FUNC15(zal, NULL, NULL, psize, d, TRACE_FORCE_GANG,
		    allocator);
		return (FUNC9(ENOSPC));
	}

	/*
	 * Start at the rotor and loop through all mgs until we find something.
	 * Note that there's no locking on mc_rotor or mc_aliquot because
	 * nothing actually breaks if we miss a few updates -- we just won't
	 * allocate quite as evenly.  It all balances out over time.
	 *
	 * If we are doing ditto or log blocks, try to spread them across
	 * consecutive vdevs.  If we're forced to reuse a vdev before we've
	 * allocated all of our ditto blocks, then try and spread them out on
	 * that vdev as much as possible.  If it turns out to not be possible,
	 * gradually lower our standards until anything becomes acceptable.
	 * Also, allocating on consecutive vdevs (as opposed to random vdevs)
	 * gives us hope of containing our fault domains to something we're
	 * able to reason about.  Otherwise, any two top-level vdev failures
	 * will guarantee the loss of data.  With consecutive allocation,
	 * only two adjacent top-level vdev failures will result in data loss.
	 *
	 * If we are doing gang blocks (hintdva is non-NULL), try to keep
	 * ourselves on the same vdev as our gang block header.  That
	 * way, we can hope for locality in vdev_cache, plus it makes our
	 * fault domains something tractable.
	 */
	if (hintdva) {
		vd = FUNC19(spa, FUNC1(&hintdva[d]));

		/*
		 * It's possible the vdev we're using as the hint no
		 * longer exists or its mg has been closed (e.g. by
		 * device removal).  Consult the rotor when
		 * all else fails.
		 */
		if (vd != NULL && vd->vdev_mg != NULL) {
			mg = vd->vdev_mg;

			if (flags & METASLAB_HINTBP_AVOID &&
			    mg->mg_next != NULL)
				mg = mg->mg_next;
		} else {
			mg = mc->mc_rotor;
		}
	} else if (d != 0) {
		vd = FUNC19(spa, FUNC1(&dva[d - 1]));
		mg = vd->vdev_mg->mg_next;
	} else {
		mg = mc->mc_rotor;
	}

	/*
	 * If the hint put us into the wrong metaslab class, or into a
	 * metaslab group that has been passivated, just follow the rotor.
	 */
	if (mg->mg_class != mc || mg->mg_activation_count <= 0)
		mg = mc->mc_rotor;

	rotor = mg;
top:
	do {
		boolean_t allocatable;

		FUNC0(mg->mg_activation_count == 1);
		vd = mg->mg_vd;

		/*
		 * Don't allocate from faulted devices.
		 */
		if (try_hard) {
			FUNC16(spa, SCL_ZIO, FTAG, RW_READER);
			allocatable = FUNC18(vd);
			FUNC17(spa, SCL_ZIO, FTAG);
		} else {
			allocatable = FUNC18(vd);
		}

		/*
		 * Determine if the selected metaslab group is eligible
		 * for allocations. If we're ganging then don't allow
		 * this metaslab group to skip allocations since that would
		 * inadvertently return ENOSPC and suspend the pool
		 * even though space is still available.
		 */
		if (allocatable && !FUNC7(flags) && !try_hard) {
			allocatable = FUNC14(mg, rotor,
			    psize, allocator, d);
		}

		if (!allocatable) {
			FUNC15(zal, mg, NULL, psize, d,
			    TRACE_NOT_ALLOCATABLE, allocator);
			goto next;
		}

		FUNC0(mg->mg_initialized);

		/*
		 * Avoid writing single-copy data to a failing,
		 * non-redundant vdev, unless we've already tried all
		 * other vdevs.
		 */
		if ((vd->vdev_stat.vs_write_errors > 0 ||
		    vd->vdev_state < VDEV_STATE_HEALTHY) &&
		    d == 0 && !try_hard && vd->vdev_children == 0) {
			FUNC15(zal, mg, NULL, psize, d,
			    TRACE_VDEV_ERROR, allocator);
			goto next;
		}

		FUNC0(mg->mg_class == mc);

		/*
		 * If we don't need to try hard, then require that the
		 * block be 1/8th of the device away from any other DVAs
		 * in this BP.  If we are trying hard, allow any offset
		 * to be used (distance=0).
		 */
		uint64_t distance = 0;
		if (!try_hard) {
			distance = vd->vdev_asize >>
			    ditto_same_vdev_distance_shift;
			if (distance <= (1ULL << vd->vdev_ms_shift))
				distance = 0;
		}

		uint64_t asize = FUNC20(vd, psize);
		FUNC0(FUNC8(asize, 1ULL << vd->vdev_ashift) == 0);

		uint64_t offset = FUNC13(mg, zal, asize, txg,
		    distance, dva, d, allocator);

		if (offset != -1ULL) {
			/*
			 * If we've just selected this metaslab group,
			 * figure out whether the corresponding vdev is
			 * over- or under-used relative to the pool,
			 * and set an allocation bias to even it out.
			 */
			if (mc->mc_aliquot == 0 && metaslab_bias_enabled) {
				vdev_stat_t *vs = &vd->vdev_stat;
				int64_t vu, cu;

				vu = (vs->vs_alloc * 100) / (vs->vs_space + 1);
				cu = (mc->mc_alloc * 100) / (mc->mc_space + 1);

				/*
				 * Calculate how much more or less we should
				 * try to allocate from this device during
				 * this iteration around the rotor.
				 * For example, if a device is 80% full
				 * and the pool is 20% full then we should
				 * reduce allocations by 60% on this device.
				 *
				 * mg_bias = (20 - 80) * 512K / 100 = -307K
				 *
				 * This reduces allocations by 307K for this
				 * iteration.
				 */
				mg->mg_bias = ((cu - vu) *
				    (int64_t)mg->mg_aliquot) / 100;
			} else if (!metaslab_bias_enabled) {
				mg->mg_bias = 0;
			}

			if (FUNC10(&mc->mc_aliquot, asize) >=
			    mg->mg_aliquot + mg->mg_bias) {
				mc->mc_rotor = mg->mg_next;
				mc->mc_aliquot = 0;
			}

			FUNC6(&dva[d], vd->vdev_id);
			FUNC5(&dva[d], offset);
			FUNC4(&dva[d], !!(flags & METASLAB_GANG_HEADER));
			FUNC3(&dva[d], asize);

			return (0);
		}
next:
		mc->mc_rotor = mg->mg_next;
		mc->mc_aliquot = 0;
	} while ((mg = mg->mg_next) != rotor);

	/*
	 * If we haven't tried hard, do so now.
	 */
	if (!try_hard) {
		try_hard = B_TRUE;
		goto top;
	}

	FUNC11(&dva[d], sizeof (dva_t));

	FUNC15(zal, rotor, NULL, psize, d, TRACE_ENOSPC, allocator);
	return (FUNC9(ENOSPC));
}