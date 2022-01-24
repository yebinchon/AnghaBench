#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/ * zct_props; } ;
typedef  TYPE_1__ zfs_creat_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  objset_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;
typedef  int /*<<< orphan*/  cred_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DMU_OT_NONE ; 
 int /*<<< orphan*/  DMU_OT_ZVOL ; 
 int /*<<< orphan*/  DMU_OT_ZVOL_PROP ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  ZFS_PROP_VOLBLOCKSIZE ; 
 int /*<<< orphan*/  ZFS_PROP_VOLSIZE ; 
 int /*<<< orphan*/  ZVOL_OBJ ; 
 int /*<<< orphan*/  ZVOL_ZAP_OBJ ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

void
FUNC9(objset_t *os, void *arg, cred_t *cr, dmu_tx_t *tx)
{
	zfs_creat_t *zct = arg;
	nvlist_t *nvprops = zct->zct_props;
	int error;
	uint64_t volblocksize, volsize;

	FUNC1(FUNC3(nvprops,
	    FUNC8(ZFS_PROP_VOLSIZE), &volsize) == 0);
	if (FUNC3(nvprops,
	    FUNC8(ZFS_PROP_VOLBLOCKSIZE), &volblocksize) != 0)
		volblocksize = FUNC7(ZFS_PROP_VOLBLOCKSIZE);

	/*
	 * These properties must be removed from the list so the generic
	 * property setting step won't apply to them.
	 */
	FUNC1(FUNC4(nvprops,
	    FUNC8(ZFS_PROP_VOLSIZE)) == 0);
	(void) FUNC4(nvprops,
	    FUNC8(ZFS_PROP_VOLBLOCKSIZE));

	error = FUNC2(os, ZVOL_OBJ, DMU_OT_ZVOL, volblocksize,
	    DMU_OT_NONE, 0, tx);
	FUNC0(error == 0);

	error = FUNC5(os, ZVOL_ZAP_OBJ, DMU_OT_ZVOL_PROP,
	    DMU_OT_NONE, 0, tx);
	FUNC0(error == 0);

	error = FUNC6(os, ZVOL_ZAP_OBJ, "size", 8, 1, &volsize, tx);
	FUNC0(error == 0);
}