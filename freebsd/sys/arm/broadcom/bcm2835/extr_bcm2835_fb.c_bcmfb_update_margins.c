
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int vi_width; int vi_cwidth; int vi_height; int vi_cheight; } ;
typedef TYPE_1__ video_info_t ;
struct TYPE_5__ {TYPE_1__ va_info; } ;
typedef TYPE_2__ video_adapter_t ;
struct bcmsc_softc {int xmargin; int width; int ymargin; int height; } ;



__attribute__((used)) static void
bcmfb_update_margins(video_adapter_t *adp)
{
 struct bcmsc_softc *sc;
 video_info_t *vi;

 sc = (struct bcmsc_softc *)adp;
 vi = &adp->va_info;

 sc->xmargin = (sc->width - (vi->vi_width * vi->vi_cwidth)) / 2;
 sc->ymargin = (sc->height - (vi->vi_height * vi->vi_cheight)) / 2;
}
