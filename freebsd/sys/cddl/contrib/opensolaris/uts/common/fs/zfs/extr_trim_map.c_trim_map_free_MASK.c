#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ vdev_notrim; TYPE_2__* vdev_trimmap; } ;
typedef  TYPE_1__ vdev_t ;
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_7__ {int /*<<< orphan*/  tm_lock; } ;
typedef  TYPE_2__ trim_map_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  zfs_trim_enabled ; 

void
FUNC4(vdev_t *vd, uint64_t offset, uint64_t size, uint64_t txg)
{
	trim_map_t *tm = vd->vdev_trimmap;

	if (!zfs_trim_enabled || vd->vdev_notrim || tm == NULL)
		return;

	FUNC1(&tm->tm_lock);
	FUNC3(tm, offset, FUNC0(vd, offset, size), txg);
	FUNC2(&tm->tm_lock);
}