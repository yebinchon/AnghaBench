
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_adapter_softc {int initialized; int va; int depth; int height; int width; } ;


 int FB_DEPTH ;
 int FB_HEIGHT ;
 int FB_WIDTH ;
 struct video_adapter_softc va_softc ;
 int versatilefb_init (int ,int *,int ) ;

__attribute__((used)) static int
versatilefb_configure(int flags)
{
 struct video_adapter_softc *va_sc;

 va_sc = &va_softc;

 if (va_sc->initialized)
  return (0);

 va_sc->width = FB_WIDTH;
 va_sc->height = FB_HEIGHT;
 va_sc->depth = FB_DEPTH;

 versatilefb_init(0, &va_sc->va, 0);

 va_sc->initialized = 1;

 return (0);
}
