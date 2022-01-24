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
typedef  int /*<<< orphan*/  zio_t ;
struct TYPE_14__ {scalar_t__ vdev_isl2cache; TYPE_1__* vdev_ops; TYPE_4__* vdev_trimmap; } ;
typedef  TYPE_2__ vdev_t ;
typedef  scalar_t__ uint64_t ;
struct TYPE_15__ {scalar_t__ ts_end; scalar_t__ ts_start; } ;
typedef  TYPE_3__ trim_seg_t ;
struct TYPE_16__ {int tm_pending; int /*<<< orphan*/  tm_lock; int /*<<< orphan*/  tm_inflight_frees; int /*<<< orphan*/  tm_queued_frees; } ;
typedef  TYPE_4__ trim_map_t ;
typedef  int /*<<< orphan*/  spa_t ;
typedef  int int64_t ;
typedef  int hrtime_t ;
struct TYPE_13__ {int /*<<< orphan*/  vdev_op_leaf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int NANOSEC ; 
 int FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,TYPE_3__*) ; 
 int FUNC4 (scalar_t__) ; 
 scalar_t__ UINT64_MAX ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC12 (TYPE_4__*,scalar_t__,scalar_t__,int,int) ; 
 int trim_timeout ; 
 scalar_t__ trim_txg_delay ; 
 int trim_vdev_max_pending ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__*,scalar_t__,scalar_t__) ; 

__attribute__((used)) static void
FUNC15(spa_t *spa, zio_t *zio, vdev_t *vd)
{
	trim_map_t *tm = vd->vdev_trimmap;
	trim_seg_t *ts;
	uint64_t size, offset, txgtarget, txgsafe;
	int64_t hard, soft;
	hrtime_t timelimit;

	FUNC0(vd->vdev_ops->vdev_op_leaf);

	if (tm == NULL)
		return;

	timelimit = FUNC7() - (hrtime_t)trim_timeout * NANOSEC;
	if (vd->vdev_isl2cache) {
		txgsafe = UINT64_MAX;
		txgtarget = UINT64_MAX;
	} else {
		txgsafe = FUNC1(FUNC11(spa), FUNC10(spa));
		if (txgsafe > trim_txg_delay)
			txgtarget = txgsafe - trim_txg_delay;
		else
			txgtarget = 0;
	}

	FUNC8(&tm->tm_lock);
	hard = 0;
	if (tm->tm_pending > trim_vdev_max_pending)
		hard = (tm->tm_pending - trim_vdev_max_pending) / 4;
	soft = FUNC2(hard + tm->tm_pending / trim_timeout + 1, 64);
	/* Loop until we have sent all outstanding free's */
	while (soft > 0 &&
	    (ts = FUNC12(tm, txgtarget, txgsafe, timelimit, hard > 0))
	    != NULL) {
		FUNC3(tm, ts);
		FUNC6(&tm->tm_queued_frees, ts);
		FUNC5(&tm->tm_inflight_frees, ts);
		size = ts->ts_end - ts->ts_start;
		offset = ts->ts_start;
		/*
		 * We drop the lock while we call zio_nowait as the IO
		 * scheduler can result in a different IO being run e.g.
		 * a write which would result in a recursive lock.
		 */
		FUNC9(&tm->tm_lock);

		FUNC13(FUNC14(zio, spa, vd, offset, size));

		soft -= FUNC4(size);
		hard -= FUNC4(size);
		FUNC8(&tm->tm_lock);
	}
	FUNC9(&tm->tm_lock);
}