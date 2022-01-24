#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* vm_page_t ;
typedef  scalar_t__ vm_paddr_t ;
typedef  scalar_t__ vm_ooffset_t ;
typedef  TYPE_2__* vm_object_t ;
struct vm_area_struct {scalar_t__ vm_private_data; scalar_t__ vm_len; int /*<<< orphan*/  vm_pfn; int /*<<< orphan*/ * vm_ops; } ;
struct TYPE_15__ {scalar_t__ handle; int /*<<< orphan*/  memattr; } ;
struct TYPE_14__ {int flags; int /*<<< orphan*/  pindex; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int PG_FICTITIOUS ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int VM_PAGER_FAIL ; 
 int VM_PAGER_OK ; 
 scalar_t__ FUNC4 (int) ; 
 struct vm_area_struct* FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 TYPE_1__* FUNC7 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,TYPE_2__*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 

__attribute__((used)) static int
FUNC11(vm_object_t vm_obj, vm_ooffset_t offset, int prot,
    vm_page_t *mres)
{
	struct vm_area_struct *vmap;

	vmap = FUNC5(vm_obj->handle);

	FUNC1(vmap != NULL);
	FUNC1(vmap->vm_private_data == vm_obj->handle);

	if (FUNC4(vmap->vm_ops != NULL && offset < vmap->vm_len)) {
		vm_paddr_t paddr = FUNC0(vmap->vm_pfn) + offset;
		vm_page_t page;

		if (((*mres)->flags & PG_FICTITIOUS) != 0) {
			/*
			 * If the passed in result page is a fake
			 * page, update it with the new physical
			 * address.
			 */
			page = *mres;
			FUNC9(page, paddr, vm_obj->memattr);
		} else {
			/*
			 * Replace the passed in "mres" page with our
			 * own fake page and free up the all of the
			 * original pages.
			 */
			FUNC3(vm_obj);
			page = FUNC7(paddr, vm_obj->memattr);
			FUNC2(vm_obj);

			FUNC8(page, vm_obj,
			    (*mres)->pindex, *mres);

			FUNC6(*mres);
			*mres = page;
		}
		FUNC10(page);
		return (VM_PAGER_OK);
	}
	return (VM_PAGER_FAIL);
}