#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vdev_t ;
struct TYPE_5__ {int /*<<< orphan*/ * l2ad_vdev; } ;
typedef  TYPE_1__ l2arc_dev_t ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  l2arc_dev_list ; 
 int /*<<< orphan*/  l2arc_dev_mtx ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

boolean_t
FUNC4(vdev_t *vd)
{
	l2arc_dev_t *dev;

	FUNC2(&l2arc_dev_mtx);
	for (dev = FUNC0(l2arc_dev_list); dev != NULL;
	    dev = FUNC1(l2arc_dev_list, dev)) {
		if (dev->l2ad_vdev == vd)
			break;
	}
	FUNC3(&l2arc_dev_mtx);

	return (dev != NULL);
}