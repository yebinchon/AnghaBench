#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vm_offset_t ;
struct l1_ttable {int* l1_domain_free; int /*<<< orphan*/  l1_physaddr; scalar_t__ l1_domain_first; scalar_t__ l1_domain_use_count; int /*<<< orphan*/ * l1_kva; } ;
typedef  int /*<<< orphan*/  pd_entry_t ;
struct TYPE_5__ {TYPE_1__* pm_l1; } ;
struct TYPE_4__ {int /*<<< orphan*/ * l1_kva; } ;

/* Variables and functions */
 int /*<<< orphan*/  L1_TABLE_SIZE ; 
 int PMAP_DOMAINS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct l1_ttable*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct l1_ttable*,int /*<<< orphan*/ ) ; 
 TYPE_2__* kernel_pmap ; 
 int /*<<< orphan*/  l1_link ; 
 int /*<<< orphan*/  l1_list ; 
 int /*<<< orphan*/  l1_lru ; 
 int /*<<< orphan*/  l1_lru_list ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct l1_ttable *l1, pd_entry_t *l1pt)
{
	int i;

	l1->l1_kva = l1pt;
	l1->l1_domain_use_count = 0;
	l1->l1_domain_first = 0;

	for (i = 0; i < PMAP_DOMAINS; i++)
		l1->l1_domain_free[i] = i + 1;

	/*
	 * Copy the kernel's L1 entries to each new L1.
	 */
	if (l1pt != kernel_pmap->pm_l1->l1_kva)
		FUNC2(l1pt, kernel_pmap->pm_l1->l1_kva, L1_TABLE_SIZE);

	if ((l1->l1_physaddr = FUNC4(kernel_pmap, (vm_offset_t)l1pt)) == 0)
		FUNC3("pmap_init_l1: can't get PA of L1 at %p", l1pt);
	FUNC0(&l1_list, l1, l1_link);
	FUNC1(&l1_lru_list, l1, l1_lru);
}