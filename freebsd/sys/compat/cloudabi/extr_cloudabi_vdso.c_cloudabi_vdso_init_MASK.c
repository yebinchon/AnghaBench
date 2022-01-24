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
typedef  scalar_t__ vm_offset_t ;
typedef  int /*<<< orphan*/  vm_object_t ;
struct sysentvec {size_t sv_shared_page_len; scalar_t__ sv_shared_page_base; scalar_t__ sv_usrstack; int /*<<< orphan*/  sv_shared_page_obj; scalar_t__ sv_maxuser; } ;
struct TYPE_4__ {int /*<<< orphan*/  valid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t,size_t) ; 
 int /*<<< orphan*/  OBJT_PHYS ; 
 size_t PAGE_SIZE ; 
 int VM_ALLOC_NOBUSY ; 
 int VM_ALLOC_ZERO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VM_PAGE_BITS_ALL ; 
 int /*<<< orphan*/  VM_PROT_DEFAULT ; 
 size_t FUNC3 (size_t,size_t) ; 
 scalar_t__ FUNC4 (size_t) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,size_t) ; 
 int /*<<< orphan*/  FUNC6 (void*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,TYPE_1__**,int) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int) ; 
 TYPE_1__* FUNC9 (int /*<<< orphan*/ ,size_t,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void
FUNC11(struct sysentvec *sv, char *begin, char *end)
{
	vm_page_t m;
	vm_object_t obj;
	vm_offset_t addr;
	size_t i, pages, pages_length, vdso_length;

	/* Determine the number of pages needed to store the vDSO. */
	vdso_length = end - begin;
	pages = FUNC3(vdso_length, PAGE_SIZE);
	pages_length = pages * PAGE_SIZE;

	/* Allocate a VM object and fill it with the vDSO. */
	obj = FUNC10(OBJT_PHYS, 0, pages_length,
	    VM_PROT_DEFAULT, 0, NULL);
	addr = FUNC4(PAGE_SIZE);
	for (i = 0; i < pages; ++i) {
		FUNC1(obj);
		m = FUNC9(obj, i, VM_ALLOC_NOBUSY | VM_ALLOC_ZERO);
		m->valid = VM_PAGE_BITS_ALL;
		FUNC2(obj);

		FUNC7(addr, &m, 1);
		FUNC6((void *)addr, begin + i * PAGE_SIZE,
		    FUNC0(vdso_length - i * PAGE_SIZE, PAGE_SIZE));
		FUNC8(addr, 1);
	}
	FUNC5(addr, PAGE_SIZE);

	/*
	 * Place the vDSO at the top of the address space. The user
	 * stack can start right below it.
	 */
	sv->sv_shared_page_base = sv->sv_maxuser - pages_length;
	sv->sv_shared_page_len = pages_length;
	sv->sv_shared_page_obj = obj;
	sv->sv_usrstack = sv->sv_shared_page_base;
}