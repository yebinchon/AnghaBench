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
struct TYPE_2__ {scalar_t__ m_owner; } ;
struct pthread_spinlock {TYPE_1__ s_lock; } ;
struct pthread {int dummy; } ;
typedef  struct pthread_spinlock* pthread_spinlock_t ;

/* Variables and functions */
 int /*<<< orphan*/  CPU_SPINWAIT ; 
 int EINVAL ; 
 int SPIN_COUNT ; 
 struct pthread_spinlock* THR_PSHARED_PTR ; 
 scalar_t__ FUNC0 (struct pthread*,TYPE_1__*) ; 
 struct pthread_spinlock* FUNC1 (struct pthread_spinlock**,int /*<<< orphan*/ ) ; 
 struct pthread* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  _thr_is_smp ; 

int
FUNC4(pthread_spinlock_t *lock)
{
	struct pthread *curthread;
	struct pthread_spinlock	*lck;
	int count;

	if (lock == NULL)
		return (EINVAL);
	lck = *lock == THR_PSHARED_PTR ? FUNC1(lock, 0) : *lock;
	if (lck == NULL)
		return (EINVAL);

	curthread = FUNC2();
	count = SPIN_COUNT;
	while (FUNC0(curthread, &lck->s_lock) != 0) {
		while (lck->s_lock.m_owner) {
			if (!_thr_is_smp) {
				FUNC3();
			} else {
				CPU_SPINWAIT;
				if (--count <= 0) {
					count = SPIN_COUNT;
					FUNC3();
				}
			}
		}
	}
	return (0);
}