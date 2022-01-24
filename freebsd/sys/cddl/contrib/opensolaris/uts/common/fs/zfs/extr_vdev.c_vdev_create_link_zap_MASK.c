#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {TYPE_2__* vdev_spa; } ;
typedef  TYPE_1__ vdev_t ;
typedef  scalar_t__ uint64_t ;
struct TYPE_5__ {int /*<<< orphan*/  spa_all_vdev_zaps; int /*<<< orphan*/  spa_meta_objset; } ;
typedef  TYPE_2__ spa_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DMU_OTN_ZAP_METADATA ; 
 int /*<<< orphan*/  DMU_OT_NONE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

uint64_t
FUNC4(vdev_t *vd, dmu_tx_t *tx)
{
	spa_t *spa = vd->vdev_spa;
	uint64_t zap = FUNC3(spa->spa_meta_objset, DMU_OTN_ZAP_METADATA,
	    DMU_OT_NONE, 0, tx);

	FUNC0(zap != 0);
	FUNC1(FUNC2(spa->spa_meta_objset, spa->spa_all_vdev_zaps,
	    zap, tx));

	return (zap);
}