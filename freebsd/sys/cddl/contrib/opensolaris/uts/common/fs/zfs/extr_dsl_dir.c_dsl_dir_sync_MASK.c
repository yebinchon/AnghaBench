#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int* dd_space_towrite; int /*<<< orphan*/  dd_dbuf; int /*<<< orphan*/  dd_lock; int /*<<< orphan*/ * dd_tempreserved; } ;
typedef  TYPE_1__ dsl_dir_t ;
struct TYPE_9__ {size_t tx_txg; } ;
typedef  TYPE_2__ dmu_tx_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 size_t TXG_MASK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*,size_t,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void
FUNC7(dsl_dir_t *dd, dmu_tx_t *tx)
{
	FUNC0(FUNC3(tx));

	FUNC5(&dd->dd_lock);
	FUNC1(dd->dd_tempreserved[tx->tx_txg&TXG_MASK]);
	FUNC4(dd, "txg=%llu towrite=%lluK\n", tx->tx_txg,
	    dd->dd_space_towrite[tx->tx_txg&TXG_MASK] / 1024);
	dd->dd_space_towrite[tx->tx_txg&TXG_MASK] = 0;
	FUNC6(&dd->dd_lock);

	/* release the hold from dsl_dir_dirty */
	FUNC2(dd->dd_dbuf, dd);
}