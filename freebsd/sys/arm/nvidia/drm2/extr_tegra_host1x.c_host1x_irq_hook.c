
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct host1x_softc {int drm_inited; int dev; TYPE_1__* tegra_drm; int irq_hook; } ;
struct TYPE_2__ {int drm_dev; } ;


 int config_intrhook_disestablish (int *) ;
 int device_printf (int ,char*,int) ;
 int drm_get_platform_dev (int ,int *,int *) ;
 int tegra_bo_driver_register (int *) ;
 int tegra_drm_driver ;

__attribute__((used)) static void
host1x_irq_hook(void *arg)
{
 struct host1x_softc *sc;
 int rv;

 sc = arg;
 config_intrhook_disestablish(&sc->irq_hook);

 tegra_bo_driver_register(&tegra_drm_driver);
 rv = drm_get_platform_dev(sc->dev, &sc->tegra_drm->drm_dev,
     &tegra_drm_driver);
 if (rv != 0) {
  device_printf(sc->dev, "drm_get_platform_dev(): %d\n", rv);
  return;
 }

 sc->drm_inited = 1;
}
