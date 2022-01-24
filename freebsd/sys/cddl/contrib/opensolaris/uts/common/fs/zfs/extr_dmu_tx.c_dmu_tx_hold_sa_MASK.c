#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_16__ {scalar_t__ sa_master_obj; scalar_t__ sa_reg_attr_obj; scalar_t__ sa_layout_attr_obj; scalar_t__ sa_force_spill; } ;
typedef  TYPE_2__ sa_os_t ;
struct TYPE_17__ {scalar_t__ sa_bonus; scalar_t__ sa_spill; } ;
typedef  TYPE_3__ sa_handle_t ;
struct TYPE_18__ {scalar_t__ dn_have_spill; } ;
typedef  TYPE_4__ dnode_t ;
struct TYPE_19__ {scalar_t__ tx_txg; TYPE_1__* tx_objset; } ;
typedef  TYPE_5__ dmu_tx_t ;
typedef  int /*<<< orphan*/  dmu_buf_impl_t ;
typedef  scalar_t__ boolean_t ;
struct TYPE_15__ {TYPE_2__* os_sa; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  B_TRUE ; 
 TYPE_4__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ DMU_NEW_OBJECT ; 
 int /*<<< orphan*/ * SA_LAYOUTS ; 
 int /*<<< orphan*/ * SA_REGISTRY ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 

void
FUNC9(dmu_tx_t *tx, sa_handle_t *hdl, boolean_t may_grow)
{
	uint64_t object;
	sa_os_t *sa = tx->tx_objset->os_sa;

	FUNC0(hdl != NULL);

	object = FUNC8(hdl);

	FUNC4(tx, object);

	if (tx->tx_objset->os_sa->sa_master_obj == 0)
		return;

	if (tx->tx_objset->os_sa->sa_reg_attr_obj == 0 ||
	    tx->tx_objset->os_sa->sa_layout_attr_obj == 0) {
		FUNC6(tx, sa->sa_master_obj, B_TRUE, SA_LAYOUTS);
		FUNC6(tx, sa->sa_master_obj, B_TRUE, SA_REGISTRY);
		FUNC6(tx, DMU_NEW_OBJECT, B_TRUE, NULL);
		FUNC6(tx, DMU_NEW_OBJECT, B_TRUE, NULL);
	}

	FUNC7(sa, tx);

	if (may_grow && tx->tx_objset->os_sa->sa_layout_attr_obj)
		FUNC6(tx, sa->sa_layout_attr_obj, B_TRUE, NULL);

	if (sa->sa_force_spill || may_grow || hdl->sa_spill) {
		FUNC0(tx->tx_txg == 0);
		FUNC5(tx, object);
	} else {
		dmu_buf_impl_t *db = (dmu_buf_impl_t *)hdl->sa_bonus;
		dnode_t *dn;

		FUNC2(db);
		dn = FUNC1(db);
		if (dn->dn_have_spill) {
			FUNC0(tx->tx_txg == 0);
			FUNC5(tx, object);
		}
		FUNC3(db);
	}
}