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
typedef  int /*<<< orphan*/  vm_page_t ;
typedef  scalar_t__ u_long ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  invl_wait ; 
 scalar_t__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,scalar_t__*) ; 
 scalar_t__ pmap_invl_gen ; 

__attribute__((used)) static void
FUNC3(vm_page_t m)
{
	u_long *m_gen;
#ifdef PV_STATS
	bool accounted = false;
#endif

	m_gen = FUNC1(m);
	while (*m_gen > pmap_invl_gen) {
#ifdef PV_STATS
		if (!accounted) {
			atomic_add_long(&invl_wait, 1);
			accounted = true;
		}
#endif
		FUNC2(m_gen, &pmap_invl_gen);
	}
}