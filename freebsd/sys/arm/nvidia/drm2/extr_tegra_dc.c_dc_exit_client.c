
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_drm {int dummy; } ;
struct dc_softc {int * irq_ih; int irq_res; } ;
typedef int device_t ;


 int bus_teardown_intr (int ,int ,int *) ;
 struct dc_softc* device_get_softc (int ) ;

__attribute__((used)) static int
dc_exit_client(device_t dev, device_t host1x, struct tegra_drm *drm)
{
 struct dc_softc *sc;

 sc = device_get_softc(dev);

 if (sc->irq_ih != ((void*)0))
  bus_teardown_intr(dev, sc->irq_res, sc->irq_ih);
 sc->irq_ih = ((void*)0);

 return (0);
}
