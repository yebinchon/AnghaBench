#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ tx_txg; int /*<<< orphan*/  tx_callbacks; } ;
typedef  TYPE_1__ dmu_tx_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ECANCELED ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void
FUNC4(dmu_tx_t *tx)
{
	FUNC0(tx->tx_txg == 0);

	/*
	 * Call any registered callbacks with an error code.
	 */
	if (!FUNC3(&tx->tx_callbacks))
		FUNC2(&tx->tx_callbacks, ECANCELED);

	FUNC1(tx);
}