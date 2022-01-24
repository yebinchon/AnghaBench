#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ io_timestamp; } ;
typedef  TYPE_2__ zio_t ;
struct TYPE_11__ {int /*<<< orphan*/  vq_lock; int /*<<< orphan*/  vq_io_complete_ts; int /*<<< orphan*/  vq_active_tree; } ;
struct TYPE_10__ {int vdev_children; int /*<<< orphan*/  vdev_path; scalar_t__ vdev_guid; int /*<<< orphan*/ * vdev_spa; TYPE_4__ vdev_queue; TYPE_1__* vdev_ops; struct TYPE_10__** vdev_child; } ;
typedef  TYPE_3__ vdev_t ;
typedef  TYPE_4__ vdev_queue_t ;
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  u_longlong_t ;
typedef  int /*<<< orphan*/  spa_t ;
struct TYPE_8__ {scalar_t__ vdev_op_leaf; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,unsigned long long,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,char*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC9(vdev_t *vd)
{
	for (int c = 0; c < vd->vdev_children; c++) {
		vdev_t *cvd = vd->vdev_child[c];

		FUNC9(cvd);
	}

	if (vd->vdev_ops->vdev_op_leaf) {
		vdev_queue_t *vq = &vd->vdev_queue;

		FUNC4(&vq->vq_lock);
		if (FUNC1(&vq->vq_active_tree) > 0) {
			spa_t *spa = vd->vdev_spa;
			zio_t *fio;
			uint64_t delta;

			/*
			 * Look at the head of all the pending queues,
			 * if any I/O has been outstanding for longer than
			 * the spa_deadman_synctime we panic the system.
			 */
			fio = FUNC0(&vq->vq_active_tree);
			delta = FUNC3() - fio->io_timestamp;
			if (delta > FUNC6(spa)) {
				FUNC8(vd, "SLOW IO: zio timestamp "
				    "%lluns, delta %lluns, last io %lluns",
				    fio->io_timestamp, (u_longlong_t)delta,
				    vq->vq_io_complete_ts);
				FUNC2("I/O to pool '%s' appears to be "
				    "hung on vdev guid %llu at '%s'.",
				    FUNC7(spa),
				    (long long unsigned int) vd->vdev_guid,
				    vd->vdev_path);
			}
		}
		FUNC5(&vq->vq_lock);
	}
}