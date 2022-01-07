
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_info {int dummy; } ;
struct ipu_softc {struct fb_info sc_fb_info; } ;
typedef int device_t ;


 struct ipu_softc* device_get_softc (int ) ;

__attribute__((used)) static struct fb_info *
ipu_fb_getinfo(device_t dev)
{
 struct ipu_softc *sc;

 sc = device_get_softc(dev);

 return (&sc->sc_fb_info);
}
