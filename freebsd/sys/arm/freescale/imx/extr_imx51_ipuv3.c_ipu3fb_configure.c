
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_adapter_softc {int initialized; int width; int height; int bpp; int stride; int va; } ;


 int ipu3fb_init (int ,int *,int ) ;
 struct video_adapter_softc va_softc ;

__attribute__((used)) static int
ipu3fb_configure(int flags)
{
 struct video_adapter_softc *sc;

 sc = &va_softc;

 if (sc->initialized)
  return 0;

 sc->width = 640;
 sc->height = 480;
 sc->bpp = 2;
 sc->stride = sc->width * sc->bpp;

 ipu3fb_init(0, &sc->va, 0);

 sc->initialized = 1;

 return (0);
}
