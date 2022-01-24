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
typedef  int uint32_t ;
struct umutex {int m_flags; int m_owner; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPU_SPINWAIT ; 
 int ENOTRECOVERABLE ; 
 int EOWNERDEAD ; 
 int SPINLOOPS ; 
 int /*<<< orphan*/  UMTX_OP_MUTEX_LOCK ; 
 int /*<<< orphan*/  UMTX_OP_MUTEX_WAIT ; 
 int UMUTEX_CONTESTED ; 
 int UMUTEX_PRIO_INHERIT ; 
 int UMUTEX_PRIO_PROTECT ; 
 int UMUTEX_RB_NOTRECOV ; 
 int UMUTEX_RB_OWNERDEAD ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (struct umutex*,int) ; 
 int /*<<< orphan*/  _thr_is_smp ; 
 int FUNC2 (struct umutex*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int*,int,int) ; 

int
FUNC4(struct umutex *mtx, uint32_t id)
{
	uint32_t owner;
	int count;

	if (!_thr_is_smp)
		return (FUNC1(mtx, id));
	if ((mtx->m_flags & (UMUTEX_PRIO_PROTECT | UMUTEX_PRIO_INHERIT)) != 0)
		return	(FUNC2(mtx, UMTX_OP_MUTEX_LOCK, 0, 0, 0));

	for (;;) {
		count = SPINLOOPS;
		while (count--) {
			owner = mtx->m_owner;
			if ((owner & ~UMUTEX_CONTESTED) == 0 &&
			    FUNC3(&mtx->m_owner, owner,
			    id | owner))
				return (0);
			if (FUNC0(owner == UMUTEX_RB_OWNERDEAD) &&
			    FUNC3(&mtx->m_owner, owner,
			    id | UMUTEX_CONTESTED))
				return (EOWNERDEAD);
			if (FUNC0(owner == UMUTEX_RB_NOTRECOV))
				return (ENOTRECOVERABLE);
			CPU_SPINWAIT;
		}

		/* wait in kernel */
		FUNC2(mtx, UMTX_OP_MUTEX_WAIT, 0, 0, 0);
	}
}