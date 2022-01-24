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
struct TYPE_8__ {int /*<<< orphan*/  zl_issuer_lock; int /*<<< orphan*/  zl_spa; int /*<<< orphan*/  zl_lock; } ;
typedef  TYPE_1__ zilog_t ;
struct TYPE_9__ {scalar_t__ zcw_done; int /*<<< orphan*/ * zcw_lwb; } ;
typedef  TYPE_2__ zil_commit_waiter_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC8(zilog_t *zilog, zil_commit_waiter_t *zcw)
{
	FUNC0(!FUNC1(&zilog->zl_lock));
	FUNC0(FUNC4(zilog->zl_spa));

	FUNC2(&zilog->zl_issuer_lock);

	if (zcw->zcw_lwb != NULL || zcw->zcw_done) {
		/*
		 * It's possible that, while we were waiting to acquire
		 * the "zl_issuer_lock", another thread committed this
		 * waiter to an lwb. If that occurs, we bail out early,
		 * without processing any of the zilog's queue of itxs.
		 *
		 * On certain workloads and system configurations, the
		 * "zl_issuer_lock" can become highly contended. In an
		 * attempt to reduce this contention, we immediately drop
		 * the lock if the waiter has already been processed.
		 *
		 * We've measured this optimization to reduce CPU spent
		 * contending on this lock by up to 5%, using a system
		 * with 32 CPUs, low latency storage (~50 usec writes),
		 * and 1024 threads performing sync writes.
		 */
		goto out;
	}

	FUNC5(zilog);
	FUNC7(zilog);
	FUNC6(zilog);

out:
	FUNC3(&zilog->zl_issuer_lock);
}