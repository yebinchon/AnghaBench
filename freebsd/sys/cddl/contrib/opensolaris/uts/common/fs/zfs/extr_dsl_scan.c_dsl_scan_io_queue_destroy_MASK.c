#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  q_zio_cv; int /*<<< orphan*/  q_sios_by_addr; int /*<<< orphan*/  q_exts_by_addr; scalar_t__ sio_asize; int /*<<< orphan*/  sio_offset; TYPE_1__* q_vd; TYPE_3__* q_scn; } ;
typedef  TYPE_2__ scan_io_t ;
typedef  int /*<<< orphan*/  int64_t ;
struct TYPE_11__ {int /*<<< orphan*/  scn_bytes_pending; } ;
typedef  TYPE_3__ dsl_scan_t ;
typedef  TYPE_2__ dsl_scan_io_queue_t ;
struct TYPE_9__ {int /*<<< orphan*/  vdev_scan_io_queue_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_2__*) ; 

void
FUNC10(dsl_scan_io_queue_t *queue)
{
	dsl_scan_t *scn = queue->q_scn;
	scan_io_t *sio;
	void *cookie = NULL;
	int64_t bytes_dequeued = 0;

	FUNC0(FUNC1(&queue->q_vd->vdev_scan_io_queue_lock));

	while ((sio = FUNC4(&queue->q_sios_by_addr, &cookie)) !=
	    NULL) {
		FUNC0(FUNC7(queue->q_exts_by_addr,
		    sio->sio_offset, sio->sio_asize));
		bytes_dequeued += sio->sio_asize;
		FUNC6(sio, sizeof (*sio));
	}

	FUNC2(&scn->scn_bytes_pending, -bytes_dequeued);
	FUNC9(queue->q_exts_by_addr, NULL, queue);
	FUNC8(queue->q_exts_by_addr);
	FUNC3(&queue->q_sios_by_addr);
	FUNC5(&queue->q_zio_cv);

	FUNC6(queue, sizeof (*queue));
}