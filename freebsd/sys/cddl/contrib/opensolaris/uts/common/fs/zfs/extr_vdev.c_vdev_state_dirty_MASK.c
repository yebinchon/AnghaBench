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
struct TYPE_9__ {int /*<<< orphan*/  vdev_state_dirty_node; struct TYPE_9__* vdev_top; TYPE_2__* vdev_spa; } ;
typedef  TYPE_1__ vdev_t ;
struct TYPE_10__ {int /*<<< orphan*/  spa_state_dirty_list; } ;
typedef  TYPE_2__ spa_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  RW_READER ; 
 int /*<<< orphan*/  RW_WRITER ; 
 int /*<<< orphan*/  SCL_STATE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int FUNC6 (TYPE_2__*) ; 
 scalar_t__ FUNC7 (TYPE_1__*) ; 

void
FUNC8(vdev_t *vd)
{
	spa_t *spa = vd->vdev_spa;

	FUNC0(FUNC6(spa));
	FUNC0(vd == vd->vdev_top);

	/*
	 * The state list is protected by the SCL_STATE lock.  The caller
	 * must either hold SCL_STATE as writer, or must be the sync thread
	 * (which holds SCL_STATE as reader).  There's only one sync thread,
	 * so this is sufficient to ensure mutual exclusion.
	 */
	FUNC0(FUNC4(spa, SCL_STATE, RW_WRITER) ||
	    (FUNC1(FUNC5(spa)) &&
	    FUNC4(spa, SCL_STATE, RW_READER)));

	if (!FUNC3(&vd->vdev_state_dirty_node) &&
	    FUNC7(vd))
		FUNC2(&spa->spa_state_dirty_list, vd);
}