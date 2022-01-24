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
typedef  scalar_t__ uint32_t ;
struct umutex {int m_flags; scalar_t__ m_owner; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENOTRECOVERABLE ; 
 int EOWNERDEAD ; 
 scalar_t__ UMUTEX_CONTESTED ; 
 int UMUTEX_PRIO_INHERIT ; 
 int UMUTEX_PRIO_PROTECT ; 
 scalar_t__ UMUTEX_RB_NOTRECOV ; 
 scalar_t__ UMUTEX_RB_OWNERDEAD ; 
 scalar_t__ UMUTEX_UNOWNED ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (scalar_t__*,scalar_t__,scalar_t__) ; 

__attribute__((used)) static inline int
FUNC3(struct umutex *mtx, uint32_t id)
{

	if (FUNC2(&mtx->m_owner, UMUTEX_UNOWNED, id) != 0)
		return (0);
	if ((uint32_t)mtx->m_owner == UMUTEX_CONTESTED &&
	    FUNC1((mtx->m_flags & (UMUTEX_PRIO_PROTECT |
	   UMUTEX_PRIO_INHERIT)) == 0) &&
	   FUNC2(&mtx->m_owner, UMUTEX_CONTESTED,
	   id | UMUTEX_CONTESTED))
		return (0);
	if (FUNC0((uint32_t)mtx->m_owner == UMUTEX_RB_OWNERDEAD) &&
	    FUNC2(&mtx->m_owner, UMUTEX_RB_OWNERDEAD,
	    id | UMUTEX_CONTESTED))
		return (EOWNERDEAD);
	if (FUNC0((uint32_t)mtx->m_owner == UMUTEX_RB_NOTRECOV))
		return (ENOTRECOVERABLE);
	return (EBUSY);
}