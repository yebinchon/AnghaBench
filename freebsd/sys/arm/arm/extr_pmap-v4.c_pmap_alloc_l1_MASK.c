#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u_int8_t ;
struct l1_ttable {size_t l1_domain_first; size_t* l1_domain_free; scalar_t__ l1_domain_use_count; } ;
typedef  TYPE_1__* pmap_t ;
struct TYPE_3__ {size_t pm_domain; struct l1_ttable* pm_l1; } ;

/* Variables and functions */
 scalar_t__ PMAP_DOMAINS ; 
 struct l1_ttable* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct l1_ttable*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct l1_ttable*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  l1_lru ; 
 int /*<<< orphan*/  l1_lru_list ; 
 int /*<<< orphan*/  l1_lru_lock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(pmap_t pm)
{
	struct l1_ttable *l1;
	u_int8_t domain;

	/*
	 * Remove the L1 at the head of the LRU list
	 */
	FUNC3(&l1_lru_lock);
	l1 = FUNC0(&l1_lru_list);
	FUNC2(&l1_lru_list, l1, l1_lru);

	/*
	 * Pick the first available domain number, and update
	 * the link to the next number.
	 */
	domain = l1->l1_domain_first;
	l1->l1_domain_first = l1->l1_domain_free[domain];

	/*
	 * If there are still free domain numbers in this L1,
	 * put it back on the TAIL of the LRU list.
	 */
	if (++l1->l1_domain_use_count < PMAP_DOMAINS)
		FUNC1(&l1_lru_list, l1, l1_lru);

	FUNC4(&l1_lru_lock);

	/*
	 * Fix up the relevant bits in the pmap structure
	 */
	pm->pm_l1 = l1;
	pm->pm_domain = domain + 1;
}