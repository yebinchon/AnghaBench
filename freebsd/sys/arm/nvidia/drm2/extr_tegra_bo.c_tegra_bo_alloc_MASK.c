#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vm_page_t ;
struct TYPE_2__ {size_t size; } ;
struct tegra_bo {int npages; int /*<<< orphan*/  m; TYPE_1__ gem_obj; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRM_MEM_DRIVER ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  VM_MEMATTR_WRITE_COMBINING ; 
 int FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct tegra_bo*) ; 

__attribute__((used)) static int
FUNC5(struct drm_device *drm, struct tegra_bo *bo)
{
	size_t size;
	int rv;

	size = bo->gem_obj.size;

	bo->npages = FUNC1(size);
	bo->m = FUNC2(sizeof(vm_page_t *) * bo->npages, DRM_MEM_DRIVER,
	    M_WAITOK | M_ZERO);

	rv = FUNC3(bo->npages, PAGE_SIZE,
	    VM_MEMATTR_WRITE_COMBINING, &(bo->m));
	if (rv != 0) {
		FUNC0("Cannot allocate memory for gem object.\n");
		return (rv);
	}
	rv = FUNC4(bo);
	if (rv != 0) {
		FUNC0("Cannot initialize gem object pager.\n");
		return (rv);
	}
	return (0);
}