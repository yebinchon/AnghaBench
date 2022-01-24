#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct pthread_spinlock {int /*<<< orphan*/  s_lock; } ;
typedef  struct pthread_spinlock* pthread_spinlock_t ;

/* Variables and functions */
 int EINVAL ; 
 struct pthread_spinlock* THR_PSHARED_PTR ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct pthread_spinlock* FUNC1 (struct pthread_spinlock**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 

int
FUNC3(pthread_spinlock_t *lock)
{
	struct pthread_spinlock	*lck;

	if (lock == NULL || *lock == NULL)
		return (EINVAL);
	lck = *lock == THR_PSHARED_PTR ? FUNC1(lock, 0) : *lock;
	if (lck == NULL)
		return (EINVAL);
	return (FUNC0(FUNC2(), &lck->s_lock));
}