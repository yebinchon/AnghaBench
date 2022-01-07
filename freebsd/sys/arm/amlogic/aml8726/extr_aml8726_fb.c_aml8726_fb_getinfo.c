
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_info {int dummy; } ;
struct aml8726_fb_softc {struct fb_info info; } ;
typedef int device_t ;


 struct aml8726_fb_softc* device_get_softc (int ) ;

__attribute__((used)) static struct fb_info *
aml8726_fb_getinfo(device_t dev)
{
 struct aml8726_fb_softc *sc = device_get_softc(dev);

 return (&sc->info);
}
