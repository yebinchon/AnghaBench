
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tegra_bo {int gem_obj; int cdev_pager; } ;
struct drm_device {TYPE_1__* driver; } ;
struct TYPE_2__ {int gem_pager_ops; } ;


 int DRM_MEM_DRIVER ;
 int EINVAL ;
 int M_WAITOK ;
 int M_ZERO ;
 int OBJT_MGTDEVICE ;
 int cdev_pager_allocate (int *,int ,int ,size_t,int ,int ,int *) ;
 int drm_gem_create_mmap_offset (int *) ;
 int drm_gem_object_init (struct drm_device*,int *,size_t) ;
 int drm_gem_object_release (int *) ;
 int free (struct tegra_bo*,int ) ;
 struct tegra_bo* malloc (int,int ,int) ;
 size_t round_page (size_t) ;
 int tegra_bo_alloc (struct drm_device*,struct tegra_bo*) ;
 int tegra_bo_free_object (int *) ;

int
tegra_bo_create(struct drm_device *drm, size_t size, struct tegra_bo **res_bo)
{
 struct tegra_bo *bo;
 int rv;

 if (size <= 0)
  return (-EINVAL);

 bo = malloc(sizeof(*bo), DRM_MEM_DRIVER, M_WAITOK | M_ZERO);

 size = round_page(size);
 rv = drm_gem_object_init(drm, &bo->gem_obj, size);
 if (rv != 0) {
  free(bo, DRM_MEM_DRIVER);
  return (rv);
 }
 rv = drm_gem_create_mmap_offset(&bo->gem_obj);
 if (rv != 0) {
  drm_gem_object_release(&bo->gem_obj);
  free(bo, DRM_MEM_DRIVER);
  return (rv);
 }

 bo->cdev_pager = cdev_pager_allocate(&bo->gem_obj, OBJT_MGTDEVICE,
     drm->driver->gem_pager_ops, size, 0, 0, ((void*)0));
 rv = tegra_bo_alloc(drm, bo);
 if (rv != 0) {
  tegra_bo_free_object(&bo->gem_obj);
  return (rv);
 }

 *res_bo = bo;
 return (0);
}
