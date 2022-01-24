#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_4__* tx_cpu; int /*<<< orphan*/ * tx_commit_cb_taskq; int /*<<< orphan*/  tx_exit_cv; int /*<<< orphan*/  tx_quiesce_done_cv; int /*<<< orphan*/  tx_quiesce_more_cv; int /*<<< orphan*/  tx_sync_done_cv; int /*<<< orphan*/  tx_sync_more_cv; int /*<<< orphan*/  tx_sync_lock; int /*<<< orphan*/  tx_threads; } ;
typedef  TYPE_1__ tx_state_t ;
typedef  int /*<<< orphan*/  tx_cpu_t ;
struct TYPE_7__ {TYPE_1__ dp_tx; } ;
typedef  TYPE_2__ dsl_pool_t ;
struct TYPE_8__ {int /*<<< orphan*/ * tc_callbacks; int /*<<< orphan*/ * tc_cv; int /*<<< orphan*/  tc_lock; int /*<<< orphan*/  tc_open_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int TXG_SIZE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int max_ncpus ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void
FUNC7(dsl_pool_t *dp)
{
	tx_state_t *tx = &dp->dp_tx;
	int c;

	FUNC0(tx->tx_threads);

	FUNC5(&tx->tx_sync_lock);

	FUNC2(&tx->tx_sync_more_cv);
	FUNC2(&tx->tx_sync_done_cv);
	FUNC2(&tx->tx_quiesce_more_cv);
	FUNC2(&tx->tx_quiesce_done_cv);
	FUNC2(&tx->tx_exit_cv);

	for (c = 0; c < max_ncpus; c++) {
		int i;

		FUNC5(&tx->tx_cpu[c].tc_open_lock);
		FUNC5(&tx->tx_cpu[c].tc_lock);
		for (i = 0; i < TXG_SIZE; i++) {
			FUNC2(&tx->tx_cpu[c].tc_cv[i]);
			FUNC4(&tx->tx_cpu[c].tc_callbacks[i]);
		}
	}

	if (tx->tx_commit_cb_taskq != NULL)
		FUNC6(tx->tx_commit_cb_taskq);

	FUNC3(tx->tx_cpu, max_ncpus * sizeof (tx_cpu_t));

	FUNC1(tx, sizeof (tx_state_t));
}