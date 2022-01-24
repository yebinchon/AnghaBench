#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  sio_offset; int /*<<< orphan*/  sio_asize; } ;
typedef  TYPE_2__ scan_io_t ;
typedef  int /*<<< orphan*/  int64_t ;
struct TYPE_12__ {int /*<<< orphan*/  scn_bytes_pending; } ;
typedef  TYPE_3__ dsl_scan_t ;
struct TYPE_13__ {int /*<<< orphan*/  q_exts_by_addr; int /*<<< orphan*/  q_sios_by_addr; TYPE_1__* q_vd; TYPE_3__* q_scn; } ;
typedef  TYPE_4__ dsl_scan_io_queue_t ;
typedef  int /*<<< orphan*/  avl_index_t ;
struct TYPE_10__ {int /*<<< orphan*/  vdev_scan_io_queue_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(dsl_scan_io_queue_t *queue, scan_io_t *sio)
{
	avl_index_t idx;
	int64_t asize = sio->sio_asize;
	dsl_scan_t *scn = queue->q_scn;

	FUNC0(FUNC1(&queue->q_vd->vdev_scan_io_queue_lock));

	if (FUNC3(&queue->q_sios_by_addr, sio, &idx) != NULL) {
		/* block is already scheduled for reading */
		FUNC2(&scn->scn_bytes_pending, -asize);
		FUNC5(sio, sizeof (*sio));
		return;
	}
	FUNC4(&queue->q_sios_by_addr, sio, idx);
	FUNC6(queue->q_exts_by_addr, sio->sio_offset, asize);
}