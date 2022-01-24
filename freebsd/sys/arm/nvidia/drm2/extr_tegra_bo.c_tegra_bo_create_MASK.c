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
struct tegra_bo {int /*<<< orphan*/  gem_obj; int /*<<< orphan*/  cdev_pager; } ;
struct drm_device {TYPE_1__* driver; } ;
struct TYPE_2__ {int /*<<< orphan*/  gem_pager_ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRM_MEM_DRIVER ; 
 int EINVAL ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  OBJT_MGTDEVICE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct drm_device*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct tegra_bo*,int /*<<< orphan*/ ) ; 
 struct tegra_bo* FUNC5 (int,int /*<<< orphan*/ ,int) ; 
 size_t FUNC6 (size_t) ; 
 int FUNC7 (struct drm_device*,struct tegra_bo*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

int
FUNC9(struct drm_device *drm, size_t size, struct tegra_bo **res_bo)
{
	struct tegra_bo *bo;
	int rv;

	if (size <= 0)
		return (-EINVAL);

	bo = FUNC5(sizeof(*bo), DRM_MEM_DRIVER, M_WAITOK | M_ZERO);

	size = FUNC6(size);
	rv = FUNC2(drm, &bo->gem_obj, size);
	if (rv != 0) {
		FUNC4(bo, DRM_MEM_DRIVER);
		return (rv);
	}
	rv = FUNC1(&bo->gem_obj);
	if (rv != 0) {
		FUNC3(&bo->gem_obj);
		FUNC4(bo, DRM_MEM_DRIVER);
		return (rv);
	}

	bo->cdev_pager = FUNC0(&bo->gem_obj, OBJT_MGTDEVICE,
	    drm->driver->gem_pager_ops, size, 0, 0, NULL);
	rv = FUNC7(drm, bo);
	if (rv != 0) {
		FUNC8(&bo->gem_obj);
		return (rv);
	}

	*res_bo = bo;
	return (0);
}