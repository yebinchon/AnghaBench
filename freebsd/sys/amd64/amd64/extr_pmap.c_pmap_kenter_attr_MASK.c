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
typedef  int /*<<< orphan*/  pt_entry_t ;

/* Variables and functions */
 int X86_PG_RW ; 
 int X86_PG_V ; 
 int /*<<< orphan*/  kernel_pmap ; 
 int pg_g ; 
 int pg_nx ; 
 int FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static __inline void
FUNC3(vm_offset_t va, vm_paddr_t pa, int mode)
{
	pt_entry_t *pte;
	int cache_bits;

	pte = FUNC2(va);
	cache_bits = FUNC0(kernel_pmap, mode, 0);
	FUNC1(pte, pa | X86_PG_RW | X86_PG_V | pg_g | pg_nx | cache_bits);
}