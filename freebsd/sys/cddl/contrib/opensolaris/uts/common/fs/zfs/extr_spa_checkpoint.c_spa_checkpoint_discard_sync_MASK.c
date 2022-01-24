#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  spa_checkpoint_discard_zthr; scalar_t__ spa_checkpoint_txg; } ;
typedef  TYPE_1__ spa_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;
struct TYPE_6__ {TYPE_1__* dp_spa; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMU_POOL_DIRECTORY_OBJECT ; 
 int /*<<< orphan*/  DMU_POOL_ZPOOL_CHECKPOINT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(void *arg, dmu_tx_t *tx)
{
	spa_t *spa = FUNC1(tx)->dp_spa;

	FUNC0(FUNC4(FUNC3(spa), DMU_POOL_DIRECTORY_OBJECT,
	    DMU_POOL_ZPOOL_CHECKPOINT, tx));

	spa->spa_checkpoint_txg = 0;

	FUNC5(spa->spa_checkpoint_discard_zthr);

	FUNC2(spa, "spa discard checkpoint", tx,
	    "started discarding checkpointed state from the pool");
}