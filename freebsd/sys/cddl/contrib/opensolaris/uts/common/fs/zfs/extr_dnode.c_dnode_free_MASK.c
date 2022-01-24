#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ dn_type; int /*<<< orphan*/  dn_mtx; scalar_t__ dn_free_txg; } ;
typedef  TYPE_1__ dnode_t ;
struct TYPE_8__ {scalar_t__ tx_txg; } ;
typedef  TYPE_2__ dmu_tx_t ;

/* Variables and functions */
 scalar_t__ DMU_OT_NONE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void
FUNC3(dnode_t *dn, dmu_tx_t *tx)
{
	FUNC1(&dn->dn_mtx);
	if (dn->dn_type == DMU_OT_NONE || dn->dn_free_txg) {
		FUNC2(&dn->dn_mtx);
		return;
	}
	dn->dn_free_txg = tx->tx_txg;
	FUNC2(&dn->dn_mtx);

	FUNC0(dn, tx);
}