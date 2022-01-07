
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_fb {int nplanes; struct tegra_bo** planes; int drm_fb; } ;
struct tegra_bo {int dummy; } ;
struct drm_mode_fb_cmd2 {int dummy; } ;
struct drm_device {int dev; } ;


 int DRM_MEM_DRIVER ;
 int M_WAITOK ;
 int M_ZERO ;
 int device_printf (int ,char*,int) ;
 int drm_framebuffer_init (struct drm_device*,int *,int *) ;
 int drm_helper_mode_fill_fb_struct (int *,struct drm_mode_fb_cmd2*) ;
 int fb_funcs ;
 int free (struct tegra_bo**,int ) ;
 void* malloc (int,int ,int) ;

__attribute__((used)) static int
fb_alloc(struct drm_device *drm, struct drm_mode_fb_cmd2 *mode_cmd,
    struct tegra_bo **planes, int num_planes, struct tegra_fb **res_fb)
{
 struct tegra_fb *fb;
 int i;
 int rv;

 fb = malloc(sizeof(*fb), DRM_MEM_DRIVER, M_WAITOK | M_ZERO);
 fb->planes = malloc(num_planes * sizeof(*fb->planes), DRM_MEM_DRIVER,
     M_WAITOK | M_ZERO);
 fb->nplanes = num_planes;

 drm_helper_mode_fill_fb_struct(&fb->drm_fb, mode_cmd);
 for (i = 0; i < fb->nplanes; i++)
  fb->planes[i] = planes[i];
 rv = drm_framebuffer_init(drm, &fb->drm_fb, &fb_funcs);
 if (rv < 0) {
  device_printf(drm->dev,
      "Cannot initialize frame buffer %d\n", rv);
  free(fb->planes, DRM_MEM_DRIVER);
  return (rv);
 }
 *res_fb = fb;
 return (0);
}
