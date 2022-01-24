#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;
typedef  struct TYPE_12__   TYPE_10__ ;

/* Type definitions */
struct TYPE_13__ {int uua_sublist_idx; int /*<<< orphan*/ * uua_tx; TYPE_2__* uua_os; } ;
typedef  TYPE_1__ userquota_updates_arg_t ;
struct TYPE_14__ {int /*<<< orphan*/  os_synced_dnodes; } ;
typedef  TYPE_2__ objset_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;
struct TYPE_15__ {int /*<<< orphan*/  dp_sync_taskq; } ;
struct TYPE_12__ {scalar_t__ dn_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMU_GROUPUSED_OBJECT ; 
 scalar_t__ DMU_OT_NONE ; 
 int /*<<< orphan*/  DMU_OT_USERGROUP_USED ; 
 TYPE_10__* FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  DMU_USERUSED_OBJECT ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_7__* FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 TYPE_1__* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  userquota_updates_task ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void
FUNC9(objset_t *os, dmu_tx_t *tx)
{
	int num_sublists;

	if (!FUNC3(os))
		return;

	/* Allocate the user/groupused objects if necessary. */
	if (FUNC0(os)->dn_type == DMU_OT_NONE) {
		FUNC1(FUNC8(os,
		    DMU_USERUSED_OBJECT,
		    DMU_OT_USERGROUP_USED, DMU_OT_NONE, 0, tx));
		FUNC1(FUNC8(os,
		    DMU_GROUPUSED_OBJECT,
		    DMU_OT_USERGROUP_USED, DMU_OT_NONE, 0, tx));
	}

	num_sublists = FUNC5(os->os_synced_dnodes);
	for (int i = 0; i < num_sublists; i++) {
		if (FUNC6(os->os_synced_dnodes, i))
			continue;
		userquota_updates_arg_t *uua =
		    FUNC4(sizeof (*uua), KM_SLEEP);
		uua->uua_os = os;
		uua->uua_sublist_idx = i;
		uua->uua_tx = tx;
		/* note: caller does taskq_wait() */
		(void) FUNC7(FUNC2(os)->dp_sync_taskq,
		    userquota_updates_task, uua, 0);
		/* callback frees uua */
	}
}