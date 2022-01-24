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
typedef  scalar_t__ uint64_t ;
struct TYPE_5__ {TYPE_1__* dp_scan; int /*<<< orphan*/  dp_mos_dir; } ;
typedef  TYPE_2__ dsl_pool_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;
struct TYPE_4__ {scalar_t__ scn_restart_txg; } ;

/* Variables and functions */
 int /*<<< orphan*/  TXG_WAIT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,scalar_t__) ; 

void
FUNC6(dsl_pool_t *dp, uint64_t txg)
{
	if (txg == 0) {
		dmu_tx_t *tx;
		tx = FUNC3(dp->dp_mos_dir);
		FUNC0(0 == FUNC1(tx, TXG_WAIT));

		txg = FUNC4(tx);
		dp->dp_scan->scn_restart_txg = txg;
		FUNC2(tx);
	} else {
		dp->dp_scan->scn_restart_txg = txg;
	}
	FUNC5("restarting resilver txg=%llu", txg);
}