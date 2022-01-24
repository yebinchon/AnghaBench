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
struct TYPE_3__ {int /*<<< orphan*/  vdev_dtl_lock; int /*<<< orphan*/ ** vdev_dtl; } ;
typedef  TYPE_1__ vdev_t ;
typedef  size_t vdev_dtl_type_t ;
typedef  int /*<<< orphan*/  range_tree_t ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

boolean_t
FUNC3(vdev_t *vd, vdev_dtl_type_t t)
{
	range_tree_t *rt = vd->vdev_dtl[t];
	boolean_t empty;

	FUNC0(&vd->vdev_dtl_lock);
	empty = FUNC2(rt);
	FUNC1(&vd->vdev_dtl_lock);

	return (empty);
}