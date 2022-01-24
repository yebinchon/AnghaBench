#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  dsl_pool_t ;
struct TYPE_3__ {int /*<<< orphan*/ * dc_dp; } ;
typedef  TYPE_1__ dmu_objset_find_ctx_t ;

/* Variables and functions */
 int /*<<< orphan*/  FTAG ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(void *arg)
{
	dmu_objset_find_ctx_t *dcp = arg;
	dsl_pool_t *dp = dcp->dc_dp;

	/*
	 * We need to get a pool_config_lock here, as there are several
	 * asssert(pool_config_held) down the stack. Getting a lock via
	 * dsl_pool_config_enter is risky, as it might be stalled by a
	 * pending writer. This would deadlock, as the write lock can
	 * only be granted when our parent thread gives up the lock.
	 * The _prio interface gives us priority over a pending writer.
	 */
	FUNC1(dp, FTAG);

	FUNC0(dcp);

	FUNC2(dp, FTAG);
}