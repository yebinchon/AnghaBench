#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint64_t ;
struct TYPE_7__ {size_t th_txg; TYPE_3__* th_cpu; } ;
typedef  TYPE_1__ txg_handle_t ;
struct TYPE_8__ {size_t tx_open_txg; TYPE_3__* tx_cpu; } ;
typedef  TYPE_2__ tx_state_t ;
struct TYPE_9__ {int /*<<< orphan*/  tc_lock; int /*<<< orphan*/ * tc_count; int /*<<< orphan*/  tc_open_lock; } ;
typedef  TYPE_3__ tx_cpu_t ;
struct TYPE_10__ {TYPE_2__ dp_tx; } ;
typedef  TYPE_4__ dsl_pool_t ;

/* Variables and functions */
 size_t CPU_SEQID ; 
 size_t TXG_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

uint64_t
FUNC2(dsl_pool_t *dp, txg_handle_t *th)
{
	tx_state_t *tx = &dp->dp_tx;
	tx_cpu_t *tc = &tx->tx_cpu[CPU_SEQID];
	uint64_t txg;

	FUNC0(&tc->tc_open_lock);
	txg = tx->tx_open_txg;

	FUNC0(&tc->tc_lock);
	tc->tc_count[txg & TXG_MASK]++;
	FUNC1(&tc->tc_lock);

	th->th_cpu = tc;
	th->th_txg = txg;

	return (txg);
}