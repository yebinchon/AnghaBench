
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tegra_plane {int index; int drm_plane; } ;
struct tegra_drm {int drm_dev; } ;
struct TYPE_2__ {int nvidia_head; } ;
struct dc_softc {TYPE_1__ tegra_crtc; } ;


 int DC_MAX_PLANES ;
 int DRM_MEM_KMS ;
 int M_WAITOK ;
 int M_ZERO ;
 int dc_plane_formats ;
 int dc_plane_funcs ;
 int drm_plane_init (int *,int *,int,int *,int ,int ,int) ;
 int free (struct tegra_plane*,int ) ;
 struct tegra_plane* malloc (int,int ,int) ;
 int nitems (int ) ;

__attribute__((used)) static int
dc_init_planes(struct dc_softc *sc, struct tegra_drm *drm)
{
 int i, rv;
 struct tegra_plane *plane;

 rv = 0;
 for (i = 0; i < DC_MAX_PLANES; i++) {
  plane = malloc(sizeof(*plane), DRM_MEM_KMS, M_WAITOK | M_ZERO);
  plane->index = i + 1;
  rv = drm_plane_init(&drm->drm_dev, &plane->drm_plane,
      1 << sc->tegra_crtc.nvidia_head, &dc_plane_funcs,
      dc_plane_formats, nitems(dc_plane_formats), 0);
  if (rv != 0) {
   free(plane, DRM_MEM_KMS);
   return (rv);
  }
 }
 return 0;
}
