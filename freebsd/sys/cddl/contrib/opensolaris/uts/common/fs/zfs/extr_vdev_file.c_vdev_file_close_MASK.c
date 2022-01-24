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
struct TYPE_5__ {TYPE_2__* vdev_tsd; int /*<<< orphan*/  vdev_delayed_close; int /*<<< orphan*/  vdev_spa; scalar_t__ vdev_reopening; } ;
typedef  TYPE_1__ vdev_t ;
struct TYPE_6__ {int /*<<< orphan*/ * vf_vnode; } ;
typedef  TYPE_2__ vdev_file_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  kcred ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(vdev_t *vd)
{
	vdev_file_t *vf = vd->vdev_tsd;

	if (vd->vdev_reopening || vf == NULL)
		return;

	if (vf->vf_vnode != NULL) {
		(void) FUNC0(vf->vf_vnode, FUNC2(vd->vdev_spa), 1, 0,
		    kcred, NULL);
	}

	vd->vdev_delayed_close = B_FALSE;
	FUNC1(vf, sizeof (vdev_file_t));
	vd->vdev_tsd = NULL;
}