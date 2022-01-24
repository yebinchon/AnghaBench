#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {scalar_t__ vdev_leaf_zap; size_t vdev_initialize_bytes_est; size_t vdev_initialize_bytes_done; scalar_t__ vdev_initialize_last_offset; TYPE_1__* vdev_top; int /*<<< orphan*/  vdev_spa; } ;
typedef  TYPE_3__ vdev_t ;
typedef  size_t uint64_t ;
struct TYPE_17__ {scalar_t__ rs_start; scalar_t__ rs_end; } ;
typedef  TYPE_4__ range_seg_t ;
struct TYPE_18__ {size_t ms_size; scalar_t__ ms_start; int /*<<< orphan*/  ms_lock; TYPE_2__* ms_allocatable; int /*<<< orphan*/  ms_sm; } ;
typedef  TYPE_5__ metaslab_t ;
struct TYPE_15__ {int /*<<< orphan*/  rt_root; } ;
struct TYPE_14__ {size_t vdev_ms_count; size_t vdev_children; int /*<<< orphan*/ * vdev_ops; TYPE_5__** vdev_ms; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_4__* FUNC1 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/  RW_READER ; 
 int /*<<< orphan*/  RW_WRITER ; 
 int /*<<< orphan*/  SCL_CONFIG ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vdev_raidz_ops ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,TYPE_4__*,TYPE_4__*) ; 

__attribute__((used)) static void
FUNC10(vdev_t *vd)
{
	FUNC0(FUNC7(vd->vdev_spa, SCL_CONFIG, RW_READER) ||
	    FUNC7(vd->vdev_spa, SCL_CONFIG, RW_WRITER));
	FUNC0(vd->vdev_leaf_zap != 0);

	vd->vdev_initialize_bytes_est = 0;
	vd->vdev_initialize_bytes_done = 0;

	for (uint64_t i = 0; i < vd->vdev_top->vdev_ms_count; i++) {
		metaslab_t *msp = vd->vdev_top->vdev_ms[i];
		FUNC5(&msp->ms_lock);

		uint64_t ms_free = msp->ms_size -
		    FUNC8(msp->ms_sm);

		if (vd->vdev_top->vdev_ops == &vdev_raidz_ops)
			ms_free /= vd->vdev_top->vdev_children;

		/*
		 * Convert the metaslab range to a physical range
		 * on our vdev. We use this to determine if we are
		 * in the middle of this metaslab range.
		 */
		range_seg_t logical_rs, physical_rs;
		logical_rs.rs_start = msp->ms_start;
		logical_rs.rs_end = msp->ms_start + msp->ms_size;
		FUNC9(vd, &logical_rs, &physical_rs);

		if (vd->vdev_initialize_last_offset <= physical_rs.rs_start) {
			vd->vdev_initialize_bytes_est += ms_free;
			FUNC6(&msp->ms_lock);
			continue;
		} else if (vd->vdev_initialize_last_offset >
		    physical_rs.rs_end) {
			vd->vdev_initialize_bytes_done += ms_free;
			vd->vdev_initialize_bytes_est += ms_free;
			FUNC6(&msp->ms_lock);
			continue;
		}

		/*
		 * If we get here, we're in the middle of initializing this
		 * metaslab. Load it and walk the free tree for more accurate
		 * progress estimation.
		 */
		FUNC2(FUNC4(msp));

		for (range_seg_t *rs = FUNC3(&msp->ms_allocatable->rt_root);
		    rs; rs = FUNC1(&msp->ms_allocatable->rt_root, rs)) {
			logical_rs.rs_start = rs->rs_start;
			logical_rs.rs_end = rs->rs_end;
			FUNC9(vd, &logical_rs, &physical_rs);

			uint64_t size = physical_rs.rs_end -
			    physical_rs.rs_start;
			vd->vdev_initialize_bytes_est += size;
			if (vd->vdev_initialize_last_offset >
			    physical_rs.rs_end) {
				vd->vdev_initialize_bytes_done += size;
			} else if (vd->vdev_initialize_last_offset >
			    physical_rs.rs_start &&
			    vd->vdev_initialize_last_offset <
			    physical_rs.rs_end) {
				vd->vdev_initialize_bytes_done +=
				    vd->vdev_initialize_last_offset -
				    physical_rs.rs_start;
			}
		}
		FUNC6(&msp->ms_lock);
	}
}