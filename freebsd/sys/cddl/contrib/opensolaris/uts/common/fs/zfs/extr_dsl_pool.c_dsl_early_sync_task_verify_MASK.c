#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {size_t vdev_children; int /*<<< orphan*/  vdev_ms_list; struct TYPE_9__** vdev_child; } ;
typedef  TYPE_1__ vdev_t ;
typedef  size_t uint64_t ;
typedef  int /*<<< orphan*/  txg_list_t ;
struct TYPE_10__ {TYPE_1__* spa_root_vdev; } ;
typedef  TYPE_2__ spa_t ;
struct TYPE_11__ {int /*<<< orphan*/  ms_checkpointing; int /*<<< orphan*/  ms_freeing; } ;
typedef  TYPE_3__ metaslab_t ;
struct TYPE_12__ {TYPE_2__* dp_spa; } ;
typedef  TYPE_4__ dsl_pool_t ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_TRUE ; 
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC4 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static boolean_t
FUNC5(dsl_pool_t *dp, uint64_t txg)
{
	spa_t *spa = dp->dp_spa;
	vdev_t *rvd = spa->spa_root_vdev;

	for (uint64_t c = 0; c < rvd->vdev_children; c++) {
		vdev_t *vd = rvd->vdev_child[c];
		txg_list_t *tl = &vd->vdev_ms_list;
		metaslab_t *ms;

		for (ms = FUNC3(tl, FUNC0(txg)); ms;
		    ms = FUNC4(tl, ms, FUNC0(txg))) {
			FUNC1(FUNC2(ms->ms_freeing));
			FUNC1(FUNC2(ms->ms_checkpointing));
		}
	}

	return (B_TRUE);
}