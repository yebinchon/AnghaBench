#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ vdev_ashift; scalar_t__ vdev_physical_ashift; struct TYPE_3__* vdev_top; } ;
typedef  TYPE_1__ vdev_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  zfs_max_auto_ashift ; 
 int /*<<< orphan*/  zfs_min_auto_ashift ; 

void
FUNC2(vdev_t *vd)
{
	if (vd == vd->vdev_top) {
		if (vd->vdev_ashift < vd->vdev_physical_ashift) {
			vd->vdev_ashift = FUNC1(
			    FUNC0(zfs_max_auto_ashift, vd->vdev_ashift),
			    FUNC0(zfs_min_auto_ashift, vd->vdev_physical_ashift));
		} else {
			/*
			 * Unusual case where logical ashift > physical ashift
			 * so we can't cap the calculated ashift based on max
			 * ashift as that would cause failures.
			 * We still check if we need to increase it to match
			 * the min ashift.
			 */
			vd->vdev_ashift = FUNC0(zfs_min_auto_ashift,
			    vd->vdev_ashift);
		}
	}
}