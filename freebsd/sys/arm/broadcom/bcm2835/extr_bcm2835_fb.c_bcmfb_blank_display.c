
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int video_adapter_t ;
struct bcmsc_softc {int fb_size; scalar_t__ fb_addr; } ;


 int memset (void*,int ,int ) ;

__attribute__((used)) static int
bcmfb_blank_display(video_adapter_t *adp, int mode)
{

 struct bcmsc_softc *sc;

 sc = (struct bcmsc_softc *)adp;
 if (sc && sc->fb_addr)
  memset((void*)sc->fb_addr, 0, sc->fb_size);

 return (0);
}
