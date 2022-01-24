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
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_2__ {int /*<<< orphan*/  key; } ;
struct drm_gem_object {TYPE_1__ map_list; } ;
struct drm_file {int dummy; } ;
struct drm_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int DRM_GEM_MAPPING_KEY ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (struct drm_gem_object*) ; 
 struct drm_gem_object* FUNC5 (struct drm_device*,struct drm_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_gem_object*) ; 

__attribute__((used)) static int
FUNC7(struct drm_file *file_priv,
    struct drm_device *drm_dev, uint32_t handle, uint64_t *offset)
{
	struct drm_gem_object *gem_obj;
	int rv;

	FUNC1(drm_dev);
	gem_obj = FUNC5(drm_dev, file_priv, handle);
	if (gem_obj == NULL) {
		FUNC3(drm_dev->dev, "Object not found\n");
		FUNC2(drm_dev);
		return (-EINVAL);
	}
	rv = FUNC4(gem_obj);
	if (rv != 0)
		goto fail;

	*offset = FUNC0(gem_obj->map_list.key) |
	    DRM_GEM_MAPPING_KEY;

	FUNC6(gem_obj);
	FUNC2(drm_dev);
	return (0);

fail:
	FUNC6(gem_obj);
	FUNC2(drm_dev);
	return (rv);
}