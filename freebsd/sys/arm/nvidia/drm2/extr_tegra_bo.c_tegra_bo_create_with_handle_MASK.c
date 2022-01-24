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
typedef  int /*<<< orphan*/  uint32_t ;
struct tegra_bo {int /*<<< orphan*/  gem_obj; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct drm_file*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct drm_device*,size_t,struct tegra_bo**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC5(struct drm_file *file, struct drm_device *drm,
    size_t size, uint32_t *handle, struct tegra_bo **res_bo)
{
	int rv;
	struct tegra_bo *bo;

	rv = FUNC3(drm, size, &bo);
	if (rv != 0)
		return (rv);

	rv = FUNC0(file, &bo->gem_obj, handle);
	if (rv != 0) {
		FUNC4(&bo->gem_obj);
		FUNC1(&bo->gem_obj);
		return (rv);
	}

	FUNC2(&bo->gem_obj);

	*res_bo = bo;
	return (0);
}