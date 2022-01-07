
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int video_adapter_t ;
typedef int u_long ;
struct fbtype {int fb_depth; int fb_cmsize; int fb_size; int fb_width; int fb_height; int fb_type; } ;
struct bcmsc_softc {int depth; int fb_size; int width; int height; } ;
typedef scalar_t__ caddr_t ;



 int FBTYPE_PCIMISC ;
 int fb_commonioctl (int *,int,scalar_t__) ;

__attribute__((used)) static int
bcmfb_ioctl(video_adapter_t *adp, u_long cmd, caddr_t data)
{
 struct bcmsc_softc *sc;
 struct fbtype *fb;

 sc = (struct bcmsc_softc *)adp;

 switch (cmd) {
 case 128:
  fb = (struct fbtype *)data;
  fb->fb_type = FBTYPE_PCIMISC;
  fb->fb_height = sc->height;
  fb->fb_width = sc->width;
  fb->fb_depth = sc->depth;
  if (sc->depth <= 1 || sc->depth > 8)
   fb->fb_cmsize = 0;
  else
   fb->fb_cmsize = 1 << sc->depth;
  fb->fb_size = sc->fb_size;
  break;
 default:
  return (fb_commonioctl(adp, cmd, data));
 }

 return (0);
}
