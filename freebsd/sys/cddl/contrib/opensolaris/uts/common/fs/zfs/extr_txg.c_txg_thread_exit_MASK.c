#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  tx_exit_cv; int /*<<< orphan*/  tx_threads; } ;
typedef  TYPE_1__ tx_state_t ;
typedef  int /*<<< orphan*/  kthread_t ;
typedef  int /*<<< orphan*/  callb_cpr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static void
FUNC4(tx_state_t *tx, callb_cpr_t *cpr, kthread_t **tpp)
{
	FUNC0(*tpp != NULL);
	*tpp = NULL;
	tx->tx_threads--;
	FUNC2(&tx->tx_exit_cv);
	FUNC1(cpr);		/* drops &tx->tx_sync_lock */
	FUNC3();
}