#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* vm_page_t ;
typedef  unsigned long vm_paddr_t ;
typedef  int /*<<< orphan*/  vm_memattr_t ;
typedef  int /*<<< orphan*/  u_long ;
struct TYPE_5__ {int flags; int /*<<< orphan*/  valid; } ;

/* Variables and functions */
 int ENOMEM ; 
 int PG_ZERO ; 
 int VM_ALLOC_NOBUSY ; 
 int VM_ALLOC_NOOBJ ; 
 int VM_ALLOC_NORMAL ; 
 int VM_ALLOC_WIRED ; 
 int VM_ALLOC_ZERO ; 
 int /*<<< orphan*/  VM_PAGE_BITS_ALL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,size_t,unsigned long,unsigned long,int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,size_t,unsigned long,unsigned long,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC4(size_t npages, u_long alignment, vm_memattr_t memattr,
    vm_page_t **ret_page)
{
	vm_page_t m;
	int pflags, tries, i;
	vm_paddr_t low, high, boundary;

	low = 0;
	high = -1UL;
	boundary = 0;
	pflags = VM_ALLOC_NORMAL  | VM_ALLOC_NOOBJ | VM_ALLOC_NOBUSY |
	    VM_ALLOC_WIRED | VM_ALLOC_ZERO;
	tries = 0;
retry:
	m = FUNC1(NULL, 0, pflags, npages, low, high, alignment,
	    boundary, memattr);
	if (m == NULL) {
		if (tries < 3) {
			if (!FUNC2(pflags, npages, low, high,
			    alignment, boundary))
				FUNC3(NULL);
			tries++;
			goto retry;
		}
		return (ENOMEM);
	}

	for (i = 0; i < npages; i++, m++) {
		if ((m->flags & PG_ZERO) == 0)
			FUNC0(m);
		m->valid = VM_PAGE_BITS_ALL;
		(*ret_page)[i] = m;
	}

	return (0);
}