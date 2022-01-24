#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct RtldLockInfo {int /*<<< orphan*/  at_fork; int /*<<< orphan*/  thread_clr_flag; int /*<<< orphan*/  thread_set_flag; int /*<<< orphan*/  (* lock_release ) (void*) ;int /*<<< orphan*/  (* wlock_acquire ) (void*) ;int /*<<< orphan*/  rlock_acquire; int /*<<< orphan*/  (* lock_destroy ) (void*) ;void* (* lock_create ) () ;} ;
struct TYPE_4__ {int /*<<< orphan*/  at_fork; int /*<<< orphan*/  thread_clr_flag; int /*<<< orphan*/  thread_set_flag; int /*<<< orphan*/  (* lock_release ) (void*) ;int /*<<< orphan*/  (* wlock_acquire ) (void*) ;int /*<<< orphan*/  rlock_acquire; int /*<<< orphan*/  (* lock_destroy ) (void*) ;void* (* lock_create ) () ;} ;
struct TYPE_3__ {void* handle; int mask; } ;

/* Variables and functions */
 int RTLD_LOCK_CNT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 struct RtldLockInfo deflockinfo ; 
 TYPE_2__ lockinfo ; 
 TYPE_1__* rtld_locks ; 
 void* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int) ; 

void
FUNC9(struct RtldLockInfo *pli)
{
	int flags, i;
	void *locks[RTLD_LOCK_CNT];

	/* disable all locking while this function is running */
	flags =	FUNC8(~0);

	if (pli == NULL)
		pli = &deflockinfo;


	for (i = 0; i < RTLD_LOCK_CNT; i++)
		if ((locks[i] = pli->lock_create()) == NULL)
			break;

	if (i < RTLD_LOCK_CNT) {
		while (--i >= 0)
			pli->lock_destroy(locks[i]);
		FUNC0();
	}

	for (i = 0; i < RTLD_LOCK_CNT; i++) {
		if (rtld_locks[i].handle == NULL)
			continue;
		if (flags & rtld_locks[i].mask)
			lockinfo.lock_release(rtld_locks[i].handle);
		lockinfo.lock_destroy(rtld_locks[i].handle);
	}

	for (i = 0; i < RTLD_LOCK_CNT; i++) {
		rtld_locks[i].handle = locks[i];
		if (flags & rtld_locks[i].mask)
			pli->wlock_acquire(rtld_locks[i].handle);
	}

	lockinfo.lock_create = pli->lock_create;
	lockinfo.lock_destroy = pli->lock_destroy;
	lockinfo.rlock_acquire = pli->rlock_acquire;
	lockinfo.wlock_acquire = pli->wlock_acquire;
	lockinfo.lock_release  = pli->lock_release;
	lockinfo.thread_set_flag = pli->thread_set_flag;
	lockinfo.thread_clr_flag = pli->thread_clr_flag;
	lockinfo.at_fork = pli->at_fork;

	/* restore thread locking state, this time with new locks */
	FUNC7(~0);
	FUNC8(flags);
	FUNC1("_rtld_thread_init: done");
}