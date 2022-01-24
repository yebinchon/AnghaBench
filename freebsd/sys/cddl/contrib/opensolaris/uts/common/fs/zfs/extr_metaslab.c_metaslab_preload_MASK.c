#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  spa_t ;
struct TYPE_7__ {int /*<<< orphan*/  ms_lock; int /*<<< orphan*/  ms_selected_txg; TYPE_2__* ms_group; } ;
typedef  TYPE_3__ metaslab_t ;
struct TYPE_6__ {int /*<<< orphan*/  mg_lock; TYPE_1__* mg_vd; } ;
struct TYPE_5__ {int /*<<< orphan*/ * vdev_spa; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(void *arg)
{
	metaslab_t *msp = arg;
	spa_t *spa = msp->ms_group->mg_vd->vdev_spa;

	FUNC0(!FUNC1(&msp->ms_group->mg_lock));

	FUNC3(&msp->ms_lock);
	(void) FUNC2(msp);
	msp->ms_selected_txg = FUNC5(spa);
	FUNC4(&msp->ms_lock);
}