
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pixel_format; } ;
struct tegra_fb {int nplanes; struct tegra_bo** planes; TYPE_1__ drm_fb; } ;
struct tegra_bo {int dummy; } ;


 int drm_format_num_planes (int ) ;

struct tegra_bo *
tegra_fb_get_plane(struct tegra_fb *fb, int idx)
{

 if (idx >= drm_format_num_planes(fb->drm_fb.pixel_format))
  return (((void*)0));
 if (idx >= fb->nplanes)
  return (((void*)0));
 return (fb->planes[idx]);
}
