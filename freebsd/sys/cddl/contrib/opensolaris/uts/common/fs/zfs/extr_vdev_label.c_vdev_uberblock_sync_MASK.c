#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zio_t ;
struct TYPE_13__ {size_t vdev_children; TYPE_1__* vdev_ops; struct TYPE_13__** vdev_child; } ;
typedef  TYPE_2__ vdev_t ;
typedef  size_t uint64_t ;
struct TYPE_14__ {int ub_txg; } ;
typedef  TYPE_3__ uberblock_t ;
typedef  int /*<<< orphan*/  abd_t ;
struct TYPE_12__ {int /*<<< orphan*/  vdev_op_leaf; } ;

/* Variables and functions */
 int /*<<< orphan*/  B_TRUE ; 
 int VDEV_LABELS ; 
 int FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int ZIO_FLAG_DONT_PROPAGATE ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_2__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t*,int) ; 
 int /*<<< orphan*/  vdev_uberblock_sync_done ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 

__attribute__((used)) static void
FUNC9(zio_t *zio, uint64_t *good_writes,
    uberblock_t *ub, vdev_t *vd, int flags)
{
	for (uint64_t c = 0; c < vd->vdev_children; c++) {
		FUNC9(zio, good_writes,
		    ub, vd->vdev_child[c], flags);
	}

	if (!vd->vdev_ops->vdev_op_leaf)
		return;

	if (!FUNC8(vd))
		return;

	int n = ub->ub_txg & (FUNC0(vd) - 1);

	/* Copy the uberblock_t into the ABD */
	abd_t *ub_abd = FUNC3(FUNC2(vd), B_TRUE);
	FUNC6(ub_abd, FUNC2(vd));
	FUNC4(ub_abd, ub, sizeof (uberblock_t));

	for (int l = 0; l < VDEV_LABELS; l++)
		FUNC7(zio, vd, l, ub_abd,
		    FUNC1(vd, n), FUNC2(vd),
		    vdev_uberblock_sync_done, good_writes,
		    flags | ZIO_FLAG_DONT_PROPAGATE);

	FUNC5(ub_abd);
}