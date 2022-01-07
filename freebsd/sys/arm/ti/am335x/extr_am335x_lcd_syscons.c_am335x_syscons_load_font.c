
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int video_adapter_t ;
typedef int u_char ;
struct video_adapter_softc {int * font; } ;



__attribute__((used)) static int
am335x_syscons_load_font(video_adapter_t *adp, int page, int size, int width,
    u_char *data, int c, int count)
{
 struct video_adapter_softc *sc = (struct video_adapter_softc *)adp;

 sc->font = data;

 return (0);
}
