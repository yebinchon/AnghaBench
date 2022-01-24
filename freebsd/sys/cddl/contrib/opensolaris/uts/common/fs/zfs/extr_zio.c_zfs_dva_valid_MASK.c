#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {size_t vdev_asize; int /*<<< orphan*/ * vdev_ops; } ;
typedef  TYPE_2__ vdev_t ;
typedef  size_t uint64_t ;
struct TYPE_8__ {TYPE_1__* spa_root_vdev; } ;
typedef  TYPE_3__ spa_t ;
typedef  int /*<<< orphan*/  dva_t ;
typedef  int /*<<< orphan*/  boolean_t ;
typedef  int /*<<< orphan*/  blkptr_t ;
struct TYPE_6__ {size_t vdev_children; TYPE_2__** vdev_child; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  B_TRUE ; 
 size_t FUNC1 (int /*<<< orphan*/  const*) ; 
 size_t FUNC2 (int /*<<< orphan*/  const*) ; 
 size_t FUNC3 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  SPA_GANGBLOCKSIZE ; 
 int /*<<< orphan*/  vdev_hole_ops ; 
 int /*<<< orphan*/  vdev_missing_ops ; 
 size_t FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 

boolean_t
FUNC5(spa_t *spa, const dva_t *dva, const blkptr_t *bp)
{
	uint64_t vdevid = FUNC3(dva);

	if (vdevid >= spa->spa_root_vdev->vdev_children)
		return (B_FALSE);

	vdev_t *vd = spa->spa_root_vdev->vdev_child[vdevid];
	if (vd == NULL)
		return (B_FALSE);

	if (vd->vdev_ops == &vdev_hole_ops)
		return (B_FALSE);

	if (vd->vdev_ops == &vdev_missing_ops) {
		return (B_FALSE);
	}

	uint64_t offset = FUNC2(dva);
	uint64_t asize = FUNC1(dva);

	if (FUNC0(bp))
		asize = FUNC4(vd, SPA_GANGBLOCKSIZE);
	if (offset + asize > vd->vdev_asize)
		return (B_FALSE);

	return (B_TRUE);
}