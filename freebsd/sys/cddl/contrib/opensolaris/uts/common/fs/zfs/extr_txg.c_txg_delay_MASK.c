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
typedef  int uint64_t ;
struct TYPE_5__ {int tx_open_txg; int tx_syncing_txg; int tx_synced_txg; int /*<<< orphan*/  tx_sync_lock; int /*<<< orphan*/  tx_quiesce_more_cv; } ;
typedef  TYPE_1__ tx_state_t ;
typedef  scalar_t__ hrtime_t ;
struct TYPE_6__ {TYPE_1__ dp_tx; } ;
typedef  TYPE_2__ dsl_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 

void
FUNC5(dsl_pool_t *dp, uint64_t txg, hrtime_t delay, hrtime_t resolution)
{
	tx_state_t *tx = &dp->dp_tx;
	hrtime_t start = FUNC1();

	/* don't delay if this txg could transition to quiescing immediately */
	if (tx->tx_open_txg > txg ||
	    tx->tx_syncing_txg == txg-1 || tx->tx_synced_txg == txg-1)
		return;

	FUNC2(&tx->tx_sync_lock);
	if (tx->tx_open_txg > txg || tx->tx_synced_txg == txg-1) {
		FUNC3(&tx->tx_sync_lock);
		return;
	}

	while (FUNC1() - start < delay &&
	    tx->tx_syncing_txg < txg-1 && !FUNC4(dp)) {
		(void) FUNC0(&tx->tx_quiesce_more_cv,
		    &tx->tx_sync_lock, delay, resolution, 0);
	}

	FUNC3(&tx->tx_sync_lock);
}