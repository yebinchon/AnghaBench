
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct host1x_softc {TYPE_1__* tegra_drm; } ;
struct fb_info {int dummy; } ;
typedef int device_t ;
struct TYPE_2__ {int drm_dev; } ;


 struct host1x_softc* device_get_softc (int ) ;
 struct fb_info* tegra_drm_fb_getinfo (int *) ;

__attribute__((used)) static struct fb_info *
host1x_fb_helper_getinfo(device_t dev)
{
 struct host1x_softc *sc;

 sc = device_get_softc(dev);
 if (sc->tegra_drm == ((void*)0))
  return (((void*)0));
 return (tegra_drm_fb_getinfo(&sc->tegra_drm->drm_dev));
}
