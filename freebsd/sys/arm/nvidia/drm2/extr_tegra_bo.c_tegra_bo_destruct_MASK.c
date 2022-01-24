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
struct tegra_bo {scalar_t__ vbase; int npages; int /*<<< orphan*/ * cdev_pager; TYPE_2__** m; TYPE_1__ gem_obj; } ;
struct TYPE_7__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  PG_FICTITIOUS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  kmem_arena ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int) ; 
 size_t FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,scalar_t__,size_t) ; 

__attribute__((used)) static void
FUNC9(struct tegra_bo *bo)
{
	vm_page_t m;
	size_t size;
	int i;

	if (bo->cdev_pager == NULL)
		return;

	size = FUNC4(bo->gem_obj.size);
	if (bo->vbase != 0)
		FUNC3(bo->vbase, bo->npages);

	FUNC0(bo->cdev_pager);
	for (i = 0; i < bo->npages; i++) {
		m = bo->m[i];
		FUNC2(bo->cdev_pager, m);
		m->flags &= ~PG_FICTITIOUS;
		FUNC7(m);
		FUNC6(m);
	}
	FUNC1(bo->cdev_pager);

	FUNC5(bo->cdev_pager);
	if (bo->vbase != 0)
		FUNC8(kmem_arena, bo->vbase, size);
}