
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_driver {int dumb_destroy; int dumb_map_offset; int dumb_create; int * gem_pager_ops; int gem_free_object; } ;


 int tegra_bo_dumb_create ;
 int tegra_bo_dumb_destroy ;
 int tegra_bo_dumb_map_offset ;
 int tegra_bo_free_object ;
 int tegra_gem_pager_ops ;

void
tegra_bo_driver_register(struct drm_driver *drm_drv)
{
 drm_drv->gem_free_object = tegra_bo_free_object;
 drm_drv->gem_pager_ops = &tegra_gem_pager_ops;
 drm_drv->dumb_create = tegra_bo_dumb_create;
 drm_drv->dumb_map_offset = tegra_bo_dumb_map_offset;
 drm_drv->dumb_destroy = tegra_bo_dumb_destroy;
}
