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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  objset_t ;
struct TYPE_4__ {scalar_t__ dn_type; } ;
typedef  TYPE_1__ dnode_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;
typedef  scalar_t__ dmu_object_type_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ DMU_OTN_ZAP_METADATA ; 
 int /*<<< orphan*/  FTAG ; 
 int /*<<< orphan*/  SPA_FEATURE_EXTENSIBLE_DATASET ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void
FUNC8(objset_t *mos, uint64_t object, dmu_tx_t *tx)
{
	dnode_t *dn;
	dmu_object_type_t t;

	FUNC0(FUNC4(tx));

	FUNC1(FUNC5(mos, object, FTAG, &dn));
	t = dn->dn_type;
	FUNC6(dn, FTAG);

	if (t == DMU_OTN_ZAP_METADATA) {
		FUNC7(FUNC3(mos),
		    SPA_FEATURE_EXTENSIBLE_DATASET, tx);
	}
	FUNC1(FUNC2(mos, object, tx));
}