#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  witness_rank_t ;
typedef  int /*<<< orphan*/  pthread_mutexattr_t ;
struct TYPE_5__ {int /*<<< orphan*/  witness; scalar_t__ lock_order; scalar_t__ lock; struct TYPE_5__* postponed_next; int /*<<< orphan*/  prof_data; } ;
typedef  TYPE_1__ malloc_mutex_t ;
typedef  scalar_t__ malloc_mutex_lock_order_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*) ; 
 int /*<<< orphan*/  MALLOC_MUTEX_TYPE ; 
 scalar_t__ OS_UNFAIR_LOCK_INIT ; 
 int /*<<< orphan*/  _CRT_SPINCOUNT ; 
 scalar_t__ FUNC2 (scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bootstrap_calloc ; 
 scalar_t__ config_debug ; 
 scalar_t__ malloc_mutex_address_ordered ; 
 int /*<<< orphan*/ * mutex_addr_comp ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ postpone_init ; 
 TYPE_1__* postponed_mutexes ; 
 scalar_t__ FUNC4 (scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 

bool
FUNC9(malloc_mutex_t *mutex, const char *name,
    witness_rank_t rank, malloc_mutex_lock_order_t lock_order) {
	FUNC3(&mutex->prof_data);
#ifdef _WIN32
#  if _WIN32_WINNT >= 0x0600
	InitializeSRWLock(&mutex->lock);
#  else
	if (!InitializeCriticalSectionAndSpinCount(&mutex->lock,
	    _CRT_SPINCOUNT)) {
		return true;
	}
#  endif
#elif (defined(JEMALLOC_OS_UNFAIR_LOCK))
	mutex->lock = OS_UNFAIR_LOCK_INIT;
#elif (defined(JEMALLOC_OSSPIN))
	mutex->lock = 0;
#elif (defined(JEMALLOC_MUTEX_INIT_CB))
	if (postpone_init) {
		mutex->postponed_next = postponed_mutexes;
		postponed_mutexes = mutex;
	} else {
		if (_pthread_mutex_init_calloc_cb(&mutex->lock,
		    bootstrap_calloc) != 0) {
			return true;
		}
	}
#else
	pthread_mutexattr_t attr;

	if (FUNC6(&attr) != 0) {
		return true;
	}
	FUNC7(&attr, MALLOC_MUTEX_TYPE);
	if (FUNC4(&mutex->lock, &attr) != 0) {
		FUNC5(&attr);
		return true;
	}
	FUNC5(&attr);
#endif
	if (config_debug) {
		mutex->lock_order = lock_order;
		if (lock_order == malloc_mutex_address_ordered) {
			FUNC8(&mutex->witness, name, rank,
			    mutex_addr_comp, mutex);
		} else {
			FUNC8(&mutex->witness, name, rank, NULL, NULL);
		}
	}
	return false;
}