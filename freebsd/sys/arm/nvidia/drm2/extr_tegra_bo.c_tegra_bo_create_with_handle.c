
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct tegra_bo {int gem_obj; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;


 int drm_gem_handle_create (struct drm_file*,int *,int *) ;
 int drm_gem_object_release (int *) ;
 int drm_gem_object_unreference_unlocked (int *) ;
 int tegra_bo_create (struct drm_device*,size_t,struct tegra_bo**) ;
 int tegra_bo_free_object (int *) ;

__attribute__((used)) static int
tegra_bo_create_with_handle(struct drm_file *file, struct drm_device *drm,
    size_t size, uint32_t *handle, struct tegra_bo **res_bo)
{
 int rv;
 struct tegra_bo *bo;

 rv = tegra_bo_create(drm, size, &bo);
 if (rv != 0)
  return (rv);

 rv = drm_gem_handle_create(file, &bo->gem_obj, handle);
 if (rv != 0) {
  tegra_bo_free_object(&bo->gem_obj);
  drm_gem_object_release(&bo->gem_obj);
  return (rv);
 }

 drm_gem_object_unreference_unlocked(&bo->gem_obj);

 *res_bo = bo;
 return (0);
}
