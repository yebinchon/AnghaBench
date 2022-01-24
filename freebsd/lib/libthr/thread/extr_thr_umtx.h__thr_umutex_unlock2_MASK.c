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
 int EPERM ; 
 int /*<<< orphan*/  UMTX_OP_MUTEX_WAKE2 ; 
 int UMUTEX_CONTESTED ; 
 int UMUTEX_NONCONSISTENT ; 
 int UMUTEX_PRIO_INHERIT ; 
 int UMUTEX_PRIO_PROTECT ; 
 int /*<<< orphan*/  UMUTEX_RB_NOTRECOV ; 
 int /*<<< orphan*/  UMUTEX_UNOWNED ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (struct umutex*) ; 
 int /*<<< orphan*/  FUNC2 (struct umutex*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int
FUNC4(struct umutex *mtx, uint32_t id, int *defer)
{
	uint32_t flags, owner;
	bool noncst;

	flags = mtx->m_flags;
	noncst = (flags & UMUTEX_NONCONSISTENT) != 0;

	if ((flags & (UMUTEX_PRIO_PROTECT | UMUTEX_PRIO_INHERIT)) != 0) {
		if (FUNC3(&mtx->m_owner, id, noncst ?
		    UMUTEX_RB_NOTRECOV : UMUTEX_UNOWNED))
			return (0);
		return (FUNC1(mtx));
	}

	do {
		owner = mtx->m_owner;
		if (FUNC0((owner & ~UMUTEX_CONTESTED) != id))
			return (EPERM);
	} while (FUNC0(!FUNC3(&mtx->m_owner, owner,
	    noncst ? UMUTEX_RB_NOTRECOV : UMUTEX_UNOWNED)));
	if ((owner & UMUTEX_CONTESTED) != 0) {
		if (defer == NULL || noncst)
			(void)FUNC2(mtx, UMTX_OP_MUTEX_WAKE2,
			    flags, 0, 0);
		else
			*defer = 1;
	}
	return (0);
}