
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int win ;
struct TYPE_2__ {int pixel_format; int height; int width; } ;
struct tegra_fb {TYPE_1__ drm_fb; } ;
struct dc_window {int src_x; int src_y; int dst_x; int dst_y; int dst_h; int dst_w; int src_h; int src_w; } ;
struct dc_softc {int dummy; } ;


 int DRM_WARNING (char*,int ) ;
 int dc_parse_drm_format (struct tegra_fb*,struct dc_window*) ;
 int dc_setup_window (struct dc_softc*,int ,struct dc_window*) ;
 int memset (struct dc_window*,int ,int) ;

__attribute__((used)) static int
dc_set_base(struct dc_softc *sc, int x, int y, struct tegra_fb *fb)
{
 struct dc_window win;
 int rv;

 memset(&win, 0, sizeof(win));
 win.src_x = x;
 win.src_y = y;
 win.src_w = fb->drm_fb.width;
 win.src_h = fb->drm_fb.height;
 win.dst_x = x;
 win.dst_y = y;
 win.dst_w = fb->drm_fb.width;
 win.dst_h = fb->drm_fb.height;

 rv = dc_parse_drm_format(fb, &win);
 if (rv != 0) {
  DRM_WARNING("unsupported pixel format %d\n",
      fb->drm_fb.pixel_format);
  return (rv);
 }
 dc_setup_window(sc, 0, &win);

 return (0);
}
