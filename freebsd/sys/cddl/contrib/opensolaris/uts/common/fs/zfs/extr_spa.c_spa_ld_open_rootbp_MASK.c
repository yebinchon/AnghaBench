#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_5__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vdev_t ;
struct TYPE_6__ {TYPE_5__* spa_dsl_pool; int /*<<< orphan*/  spa_meta_objset; int /*<<< orphan*/  spa_first_txg; int /*<<< orphan*/ * spa_root_vdev; } ;
typedef  TYPE_1__ spa_t ;
struct TYPE_7__ {int /*<<< orphan*/  dp_meta_objset; } ;

/* Variables and functions */
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  VDEV_AUX_CORRUPT_DATA ; 
 int FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,TYPE_5__**) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(spa_t *spa)
{
	int error = 0;
	vdev_t *rvd = spa->spa_root_vdev;

	error = FUNC0(spa, spa->spa_first_txg, &spa->spa_dsl_pool);
	if (error != 0) {
		FUNC1(spa, "unable to open rootbp in dsl_pool_init "
		    "[error=%d]", error);
		return (FUNC2(rvd, VDEV_AUX_CORRUPT_DATA, EIO));
	}
	spa->spa_meta_objset = spa->spa_dsl_pool->dp_meta_objset;

	return (0);
}