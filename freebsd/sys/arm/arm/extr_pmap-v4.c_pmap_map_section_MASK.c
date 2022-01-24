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
typedef  size_t vm_offset_t ;
typedef  size_t pd_entry_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 size_t L1_S_OFFSET ; 
 size_t FUNC2 (int /*<<< orphan*/ ,int) ; 
 size_t L1_S_PROTO ; 
 size_t L1_S_SHIFT ; 
 int /*<<< orphan*/  PMAP_DOMAIN_KERNEL ; 
#define  PTE_CACHE 130 
 int /*<<< orphan*/  PTE_KERNEL ; 
#define  PTE_NOCACHE 129 
#define  PTE_PAGETABLE 128 
 int /*<<< orphan*/  FUNC3 (size_t*) ; 
 size_t pte_l1_s_cache_mode ; 
 size_t pte_l1_s_cache_mode_pt ; 

void
FUNC4(vm_offset_t l1pt, vm_offset_t va, vm_offset_t pa,
    int prot, int cache)
{
	pd_entry_t *pde = (pd_entry_t *) l1pt;
	pd_entry_t fl;

	FUNC0(((va | pa) & L1_S_OFFSET) == 0, ("ouin2"));

	switch (cache) {
	case PTE_NOCACHE:
	default:
		fl = 0;
		break;

	case PTE_CACHE:
		fl = pte_l1_s_cache_mode;
		break;

	case PTE_PAGETABLE:
		fl = pte_l1_s_cache_mode_pt;
		break;
	}

	pde[va >> L1_S_SHIFT] = L1_S_PROTO | pa |
	    FUNC2(PTE_KERNEL, prot) | fl | FUNC1(PMAP_DOMAIN_KERNEL);
	FUNC3(&pde[va >> L1_S_SHIFT]);

}