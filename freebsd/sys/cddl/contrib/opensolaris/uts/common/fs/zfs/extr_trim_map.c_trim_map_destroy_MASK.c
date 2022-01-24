#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {TYPE_3__* vdev_trimmap; int /*<<< orphan*/  vdev_spa; TYPE_1__* vdev_ops; } ;
typedef  TYPE_2__ vdev_t ;
struct TYPE_14__ {int /*<<< orphan*/  tm_lock; int /*<<< orphan*/  tm_head; int /*<<< orphan*/  tm_pending_writes; int /*<<< orphan*/  tm_inflight_writes; int /*<<< orphan*/  tm_inflight_frees; int /*<<< orphan*/  tm_queued_frees; } ;
typedef  TYPE_3__ trim_seg_t ;
typedef  TYPE_3__ trim_map_t ;
struct TYPE_12__ {int /*<<< orphan*/  vdev_op_leaf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  zfs_trim_enabled ; 

void
FUNC11(vdev_t *vd)
{
	trim_map_t *tm;
	trim_seg_t *ts;

	FUNC0(vd->vdev_ops->vdev_op_leaf);

	if (!zfs_trim_enabled)
		return;

	tm = vd->vdev_trimmap;
	if (tm == NULL)
		return;

	/*
	 * We may have been called before trim_map_vdev_commit_done()
	 * had a chance to run, so do it now to prune the remaining
	 * inflight frees.
	 */
	FUNC10(vd->vdev_spa, vd);

	FUNC8(&tm->tm_lock);
	while ((ts = FUNC6(&tm->tm_head)) != NULL) {
		FUNC3(&tm->tm_queued_frees, ts);
		FUNC1(tm, ts);
		FUNC4(ts, sizeof (*ts));
	}
	FUNC9(&tm->tm_lock);

	FUNC2(&tm->tm_queued_frees);
	FUNC2(&tm->tm_inflight_frees);
	FUNC2(&tm->tm_inflight_writes);
	FUNC5(&tm->tm_pending_writes);
	FUNC5(&tm->tm_head);
	FUNC7(&tm->tm_lock);
	FUNC4(tm, sizeof (*tm));
	vd->vdev_trimmap = NULL;
}