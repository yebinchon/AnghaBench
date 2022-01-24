#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  isc_mem_t ;
struct TYPE_5__ {scalar_t__ magic; scalar_t__ impmagic; } ;
struct TYPE_6__ {int /*<<< orphan*/  lock; int /*<<< orphan*/ * mctx; TYPE_1__ common; int /*<<< orphan*/  threads; int /*<<< orphan*/  paused; int /*<<< orphan*/  work_available; int /*<<< orphan*/  exclusive_granted; } ;
typedef  TYPE_2__ isc__taskmgr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_2__*,int) ; 
 int /*<<< orphan*/ * taskmgr ; 

__attribute__((used)) static void
FUNC7(isc__taskmgr_t *manager) {
	isc_mem_t *mctx;

	FUNC1(&manager->lock);
#ifdef USE_WORKER_THREADS
	(void)isc_condition_destroy(&manager->exclusive_granted);
	(void)isc_condition_destroy(&manager->work_available);
	(void)isc_condition_destroy(&manager->paused);
	isc_mem_free(manager->mctx, manager->threads);
#endif /* USE_WORKER_THREADS */
	manager->common.impmagic = 0;
	manager->common.magic = 0;
	mctx = manager->mctx;
	FUNC2(&manager->lock);
	FUNC0(&manager->lock);
	FUNC6(mctx, manager, sizeof(*manager));
	FUNC4(&mctx);

#ifdef USE_SHARED_MANAGER
	taskmgr = NULL;
#endif	/* USE_SHARED_MANAGER */
}