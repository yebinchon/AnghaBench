#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_8__ {unsigned long long dn_indblkshift; } ;
typedef  TYPE_1__ dnode_t ;
struct TYPE_9__ {scalar_t__ tx_txg; int /*<<< orphan*/  tx_objset; } ;
typedef  TYPE_2__ dmu_tx_t ;
struct TYPE_10__ {int /*<<< orphan*/  txh_space_towrite; TYPE_1__* txh_dnode; } ;
typedef  TYPE_3__ dmu_tx_hold_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FTAG ; 
 int /*<<< orphan*/  THT_WRITE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 TYPE_3__* FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long long,int /*<<< orphan*/ ) ; 

void
FUNC4(dmu_tx_t *tx, uint64_t object)
{
	dmu_tx_hold_t *txh;

	FUNC0(tx->tx_txg == 0);
	txh = FUNC2(tx, tx->tx_objset,
	    object, THT_WRITE, 0, 0);
	if (txh == NULL)
		return;

	dnode_t *dn = txh->txh_dnode;
	(void) FUNC3(&txh->txh_space_towrite,
	    1ULL << dn->dn_indblkshift, FTAG);
	FUNC1(txh);
}