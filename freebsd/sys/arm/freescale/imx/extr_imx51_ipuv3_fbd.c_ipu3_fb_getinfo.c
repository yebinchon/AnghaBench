
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_info {int dummy; } ;
struct ipu3sc_softc {struct fb_info sc_info; } ;
typedef int device_t ;


 struct ipu3sc_softc* device_get_softc (int ) ;

__attribute__((used)) static struct fb_info *
ipu3_fb_getinfo(device_t dev)
{
 struct ipu3sc_softc *sc = device_get_softc(dev);

 return (&sc->sc_info);
}
