
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_plane {int dummy; } ;


 int DRM_MEM_KMS ;
 int dc_plane_disable (struct drm_plane*) ;
 int drm_plane_cleanup (struct drm_plane*) ;
 int free (struct drm_plane*,int ) ;

__attribute__((used)) static void
dc_plane_destroy(struct drm_plane *plane)
{

 dc_plane_disable(plane);
 drm_plane_cleanup(plane);
 free(plane, DRM_MEM_KMS);
}
