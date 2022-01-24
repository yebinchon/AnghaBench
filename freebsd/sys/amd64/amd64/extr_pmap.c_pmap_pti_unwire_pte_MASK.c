#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* vm_page_t ;
typedef  int /*<<< orphan*/  vm_offset_t ;
typedef  int pd_entry_t ;
struct TYPE_4__ {scalar_t__ ref_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (uintptr_t) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int X86_PG_PS ; 
 int X86_PG_V ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 int* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int*,int) ; 
 int /*<<< orphan*/  pti_obj ; 

__attribute__((used)) static void
FUNC7(void *pte, vm_offset_t va)
{
	vm_page_t m;
	pd_entry_t *pde;

	FUNC3(pti_obj);
	m = FUNC2(FUNC0((uintptr_t)pte));
	FUNC1(m->ref_count > 0);
	if (FUNC4(m)) {
		pde = FUNC5(va);
		FUNC1((*pde & (X86_PG_PS | X86_PG_V)) == X86_PG_V);
		*pde = 0;
		FUNC6(pde, false);
	}
}