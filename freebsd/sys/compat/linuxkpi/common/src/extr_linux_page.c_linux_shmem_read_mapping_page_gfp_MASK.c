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
typedef  struct page* vm_page_t ;
typedef  int /*<<< orphan*/  vm_object_t ;
struct page {int dummy; } ;
typedef  int gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 struct page* FUNC0 (int /*<<< orphan*/ ) ; 
 int GFP_NOWAIT ; 
 int VM_ALLOC_NOBUSY ; 
 int VM_ALLOC_NORMAL ; 
 int VM_ALLOC_WIRED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int VM_PAGER_OK ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (struct page**,int /*<<< orphan*/ ,int,int) ; 

struct page *
FUNC5(vm_object_t obj, int pindex, gfp_t gfp)
{
	vm_page_t page;
	int rv;

	if ((gfp & GFP_NOWAIT) != 0)
		FUNC3("GFP_NOWAIT is unimplemented");

	FUNC1(obj);
	rv = FUNC4(&page, obj, pindex, VM_ALLOC_NORMAL |
	    VM_ALLOC_NOBUSY | VM_ALLOC_WIRED);
	FUNC2(obj);
	if (rv != VM_PAGER_OK)
		return (FUNC0(-EINVAL));
	return (page);
}