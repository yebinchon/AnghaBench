#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  dsl_pool_t ;
struct TYPE_12__ {TYPE_1__* ds_dir; } ;
typedef  TYPE_2__ dsl_dataset_t ;
struct TYPE_13__ {scalar_t__ ddrsa_recursive; int /*<<< orphan*/ * ddrsa_tx; int /*<<< orphan*/  ddrsa_fsname; } ;
typedef  TYPE_3__ dsl_dataset_rename_snapshot_arg_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;
struct TYPE_11__ {int /*<<< orphan*/  dd_object; } ;

/* Variables and functions */
 int /*<<< orphan*/  DS_FIND_CHILDREN ; 
 int /*<<< orphan*/  FTAG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/  (*) (int /*<<< orphan*/ *,TYPE_2__*,TYPE_3__*),TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_2__*,TYPE_3__*) ; 

__attribute__((used)) static void
FUNC6(void *arg, dmu_tx_t *tx)
{
	dsl_dataset_rename_snapshot_arg_t *ddrsa = arg;
	dsl_pool_t *dp = FUNC2(tx);
	dsl_dataset_t *hds;

	FUNC0(FUNC3(dp, ddrsa->ddrsa_fsname, FTAG, &hds));
	ddrsa->ddrsa_tx = tx;
	if (ddrsa->ddrsa_recursive) {
		FUNC0(FUNC1(dp, hds->ds_dir->dd_object,
		    dsl_dataset_rename_snapshot_sync_impl, ddrsa,
		    DS_FIND_CHILDREN));
	} else {
		FUNC0(FUNC5(dp, hds, ddrsa));
	}
	FUNC4(hds, FTAG);
}