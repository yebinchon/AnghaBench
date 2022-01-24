#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* vm_page_t ;
struct TYPE_6__ {int /*<<< orphan*/  size; } ;
struct tegra_bo {int npages; TYPE_2__** m; int /*<<< orphan*/  vbase; int /*<<< orphan*/  cdev_pager; int /*<<< orphan*/  pbase; TYPE_1__ gem_obj; } ;
struct TYPE_7__ {int /*<<< orphan*/  flags; int /*<<< orphan*/  oflags; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int M_BESTFIT ; 
 int M_WAITOK ; 
 int /*<<< orphan*/  PG_FICTITIOUS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  VPO_UNMANAGED ; 
 int /*<<< orphan*/  kmem_arena ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_2__**,int) ; 
 size_t FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,size_t,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC7(struct tegra_bo *bo)
{
	vm_page_t m;
	size_t size;
	int i;

	size = FUNC4(bo->gem_obj.size);

	bo->pbase = FUNC2(bo->m[0]);
	if (FUNC6(kmem_arena, size, M_WAITOK | M_BESTFIT, &bo->vbase))
		return (ENOMEM);

	FUNC0(bo->cdev_pager);
	for (i = 0; i < bo->npages; i++) {
		m = bo->m[i];
		/*
		 * XXX This is a temporary hack.
		 * We need pager suitable for paging (mmap) managed
		 * real (non-fictitious) pages.
		 * - managed pages are needed for clean module unload.
		 * - aliasing fictitious page to real one is bad,
		 *   pmap cannot handle this situation without issues
		 *   It expects that
		 *    paddr = PHYS_TO_VM_PAGE(VM_PAGE_TO_PHYS(paddr))
		 *   for every single page passed to pmap.
		 */
		m->oflags &= ~VPO_UNMANAGED;
		m->flags |= PG_FICTITIOUS;
		if (FUNC5(m, bo->cdev_pager, i) != 0)
			return (EINVAL);
	}
	FUNC1(bo->cdev_pager);

	FUNC3(bo->vbase, bo->m, bo->npages);
	return (0);
}