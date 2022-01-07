
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_info {int dummy; } ;
struct dcu_softc {struct fb_info sc_info; } ;
typedef int device_t ;


 struct dcu_softc* device_get_softc (int ) ;

__attribute__((used)) static struct fb_info *
dcu4_fb_getinfo(device_t dev)
{
 struct dcu_softc *sc = device_get_softc(dev);

 return (&sc->sc_info);
}
