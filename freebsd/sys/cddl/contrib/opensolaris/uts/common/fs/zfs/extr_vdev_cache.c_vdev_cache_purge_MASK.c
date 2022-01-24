#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  vc_lock; int /*<<< orphan*/  vc_offset_tree; } ;
struct TYPE_5__ {TYPE_2__ vdev_cache; } ;
typedef  TYPE_1__ vdev_t ;
typedef  TYPE_2__ vdev_cache_t ;
typedef  int /*<<< orphan*/  vdev_cache_entry_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ *) ; 

void
FUNC4(vdev_t *vd)
{
	vdev_cache_t *vc = &vd->vdev_cache;
	vdev_cache_entry_t *ve;

	FUNC1(&vc->vc_lock);
	while ((ve = FUNC0(&vc->vc_offset_tree)) != NULL)
		FUNC3(vc, ve);
	FUNC2(&vc->vc_lock);
}