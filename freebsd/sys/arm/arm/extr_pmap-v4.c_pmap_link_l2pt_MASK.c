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
typedef  size_t u_int ;
struct pv_addr {int pv_pa; int pv_va; } ;
typedef  int pd_entry_t ;

/* Variables and functions */
 int L1_C_PROTO ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 size_t L1_S_SHIFT ; 
 int /*<<< orphan*/  PMAP_DOMAIN_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct pv_addr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kernel_pt_list ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int) ; 
 int /*<<< orphan*/  pv_list ; 

void
FUNC4(vm_offset_t l1pt, vm_offset_t va, struct pv_addr *l2pv)
{
	pd_entry_t *pde = (pd_entry_t *) l1pt, proto;
	u_int slot = va >> L1_S_SHIFT;

	proto = FUNC0(PMAP_DOMAIN_KERNEL) | L1_C_PROTO;

#ifdef VERBOSE_INIT_ARM
	printf("pmap_link_l2pt: pa=0x%x va=0x%x\n", l2pv->pv_pa, l2pv->pv_va);
#endif

	pde[slot + 0] = proto | (l2pv->pv_pa + 0x000);

	FUNC1(&pde[slot]);

	FUNC2(&kernel_pt_list, l2pv, pv_list);


}