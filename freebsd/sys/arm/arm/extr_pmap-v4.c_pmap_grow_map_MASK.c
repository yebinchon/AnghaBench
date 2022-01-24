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
typedef  int vm_paddr_t ;
typedef  int /*<<< orphan*/  vm_offset_t ;
struct vm_page {int dummy; } ;
struct l2_bucket {int* l2b_kva; } ;
typedef  int pt_entry_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int L2_S_PROTO ; 
 int /*<<< orphan*/  PTE_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 
 int VM_ALLOC_NOOBJ ; 
 int VM_ALLOC_WIRED ; 
 int FUNC2 (struct vm_page*) ; 
 int VM_PROT_READ ; 
 int VM_PROT_WRITE ; 
 int /*<<< orphan*/  kernel_pmap ; 
 size_t FUNC3 (int /*<<< orphan*/ ) ; 
 struct l2_bucket* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct vm_page* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static __inline int
FUNC6(vm_offset_t va, pt_entry_t cache_mode, vm_paddr_t *pap)
{
	struct l2_bucket *l2b;
	pt_entry_t *ptep;
	vm_paddr_t pa;
	struct vm_page *pg;

	pg = FUNC5(NULL, 0, VM_ALLOC_NOOBJ | VM_ALLOC_WIRED);
	if (pg == NULL)
		return (1);
	pa = FUNC2(pg);

	if (pap)
		*pap = pa;

	l2b = FUNC4(kernel_pmap, va);

	ptep = &l2b->l2b_kva[FUNC3(va)];
	*ptep = L2_S_PROTO | pa | cache_mode |
	    FUNC0(PTE_KERNEL, VM_PROT_READ | VM_PROT_WRITE);
	FUNC1(ptep);
	return (0);
}