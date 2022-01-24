#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ vs_scan_processed; } ;
struct TYPE_4__ {int vdev_children; int /*<<< orphan*/  vdev_stat_lock; struct TYPE_4__** vdev_child; TYPE_2__ vdev_stat; } ;
typedef  TYPE_1__ vdev_t ;
typedef  TYPE_2__ vdev_stat_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void
FUNC2(vdev_t *vd)
{
	vdev_stat_t *vs = &vd->vdev_stat;

	for (int c = 0; c < vd->vdev_children; c++)
		FUNC2(vd->vdev_child[c]);

	FUNC0(&vd->vdev_stat_lock);
	vs->vs_scan_processed = 0;
	FUNC1(&vd->vdev_stat_lock);
}