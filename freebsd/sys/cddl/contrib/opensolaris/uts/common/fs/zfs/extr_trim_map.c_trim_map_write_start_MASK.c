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
struct TYPE_13__ {int /*<<< orphan*/  io_size; TYPE_2__* io_vd; void* io_offset; } ;
typedef  TYPE_1__ zio_t ;
struct TYPE_14__ {scalar_t__ vdev_notrim; TYPE_4__* vdev_trimmap; } ;
typedef  TYPE_2__ vdev_t ;
typedef  void* uint64_t ;
struct TYPE_15__ {void* ts_end; void* ts_start; } ;
typedef  TYPE_3__ trim_seg_t ;
struct TYPE_16__ {int /*<<< orphan*/  tm_lock; int /*<<< orphan*/  tm_inflight_writes; int /*<<< orphan*/  tm_queued_frees; int /*<<< orphan*/  tm_pending_writes; int /*<<< orphan*/  tm_inflight_frees; } ;
typedef  TYPE_4__ trim_map_t ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  B_TRUE ; 
 void* FUNC0 (TYPE_2__*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,TYPE_3__*,void*,void*) ; 
 int /*<<< orphan*/  zfs_trim_enabled ; 

boolean_t
FUNC7(zio_t *zio)
{
	vdev_t *vd = zio->io_vd;
	trim_map_t *tm = vd->vdev_trimmap;
	trim_seg_t tsearch, *ts;
	boolean_t left_over, right_over;
	uint64_t start, end;

	if (!zfs_trim_enabled || vd->vdev_notrim || tm == NULL)
		return (B_TRUE);

	start = zio->io_offset;
	end = FUNC0(zio->io_vd, start, zio->io_size);
	tsearch.ts_start = start;
	tsearch.ts_end = end;

	FUNC4(&tm->tm_lock);

	/*
	 * Checking for colliding in-flight frees.
	 */
	ts = FUNC2(&tm->tm_inflight_frees, &tsearch, NULL);
	if (ts != NULL) {
		FUNC3(&tm->tm_pending_writes, zio);
		FUNC5(&tm->tm_lock);
		return (B_FALSE);
	}

	/*
	 * Loop until all overlapping segments are removed.
	 */
	while ((ts = FUNC2(&tm->tm_queued_frees, &tsearch, NULL)) != NULL) {
		FUNC6(tm, ts, start, end);
	}

	FUNC1(&tm->tm_inflight_writes, zio);

	FUNC5(&tm->tm_lock);

	return (B_TRUE);
}