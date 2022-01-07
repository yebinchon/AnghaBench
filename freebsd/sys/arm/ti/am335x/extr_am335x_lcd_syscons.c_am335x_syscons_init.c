
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ vm_offset_t ;
struct TYPE_5__ {int vi_cheight; int vi_cwidth; int vi_width; int vi_height; } ;
typedef TYPE_1__ video_info_t ;
struct TYPE_6__ {int va_flags; scalar_t__ va_window; TYPE_1__ va_info; } ;
typedef TYPE_2__ video_adapter_t ;
struct video_adapter_softc {int width; int height; int xmargin; int ymargin; int va; int font; } ;


 int AM335X_FONT_HEIGHT ;
 int COL ;
 int ROW ;
 int V_ADP_FONT ;
 scalar_t__ am335x_syscons_static_window ;
 int dflt_font_16 ;
 int vid_init_struct (TYPE_2__*,char*,int,int) ;
 int vid_register (int *) ;

__attribute__((used)) static int
am335x_syscons_init(int unit, video_adapter_t *adp, int flags)
{
 struct video_adapter_softc *sc;
 video_info_t *vi;

 sc = (struct video_adapter_softc *)adp;
 vi = &adp->va_info;

 vid_init_struct(adp, "am335x_syscons", -1, unit);

 sc->font = dflt_font_16;
 vi->vi_cheight = AM335X_FONT_HEIGHT;
 vi->vi_cwidth = 8;

 vi->vi_width = sc->width/8;
 vi->vi_height = sc->height/vi->vi_cheight;




 if (vi->vi_width > COL)
  vi->vi_width = COL;
 if (vi->vi_height > ROW)
  vi->vi_height = ROW;

 sc->xmargin = (sc->width - (vi->vi_width * vi->vi_cwidth)) / 2;
 sc->ymargin = (sc->height - (vi->vi_height * vi->vi_cheight))/2;


 adp->va_window = (vm_offset_t) am335x_syscons_static_window;
 adp->va_flags |= V_ADP_FONT ;

 vid_register(&sc->va);

 return (0);
}
