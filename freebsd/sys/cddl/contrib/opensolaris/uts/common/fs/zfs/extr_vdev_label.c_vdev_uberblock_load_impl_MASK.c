#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zio_t ;
struct TYPE_10__ {int vdev_children; TYPE_1__* vdev_ops; struct TYPE_10__** vdev_child; } ;
typedef  TYPE_2__ vdev_t ;
struct ubl_cbdata {int dummy; } ;
struct TYPE_9__ {scalar_t__ vdev_op_leaf; } ;

/* Variables and functions */
 int /*<<< orphan*/  B_TRUE ; 
 int VDEV_LABELS ; 
 int FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_2__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  vdev_uberblock_load_done ; 

__attribute__((used)) static void
FUNC6(zio_t *zio, vdev_t *vd, int flags,
    struct ubl_cbdata *cbp)
{
	for (int c = 0; c < vd->vdev_children; c++)
		FUNC6(zio, vd->vdev_child[c], flags, cbp);

	if (vd->vdev_ops->vdev_op_leaf && FUNC5(vd)) {
		for (int l = 0; l < VDEV_LABELS; l++) {
			for (int n = 0; n < FUNC0(vd); n++) {
				FUNC4(zio, vd, l,
				    FUNC3(FUNC2(vd),
				    B_TRUE), FUNC1(vd, n),
				    FUNC2(vd),
				    vdev_uberblock_load_done, zio, flags);
			}
		}
	}
}