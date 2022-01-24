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
struct TYPE_4__ {int /*<<< orphan*/  dp_root_dir_obj; int /*<<< orphan*/ * dp_origin_snap; } ;
typedef  TYPE_1__ dsl_pool_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int DS_FIND_CHILDREN ; 
 int DS_FIND_SERIALIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  upgrade_clones_cb ; 

void
FUNC4(dsl_pool_t *dp, dmu_tx_t *tx)
{
	FUNC0(FUNC3(tx));
	FUNC0(dp->dp_origin_snap != NULL);

	FUNC1(FUNC2(dp, dp->dp_root_dir_obj, upgrade_clones_cb,
	    tx, DS_FIND_CHILDREN | DS_FIND_SERIALIZE));
}