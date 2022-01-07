
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdmi_softc {int * mem_res; int * irq_res; int * supply_vdd; int * supply_pll; int * supply_hdmi; int * hwreset_hdmi; int * clk_hdmi; int * clk_parent; int * irq_ih; int dev; } ;
typedef int device_t ;


 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int TEGRA_DRM_DEREGISTER_CLIENT (int ,int ) ;
 int bus_generic_detach (int ) ;
 int bus_release_resource (int ,int ,int ,int *) ;
 int bus_teardown_intr (int ,int *,int *) ;
 int clk_release (int *) ;
 int device_get_parent (int ) ;
 struct hdmi_softc* device_get_softc (int ) ;
 int hwreset_release (int *) ;
 int regulator_release (int *) ;

__attribute__((used)) static int
hdmi_detach(device_t dev)
{
 struct hdmi_softc *sc;
 sc = device_get_softc(dev);

 TEGRA_DRM_DEREGISTER_CLIENT(device_get_parent(sc->dev), sc->dev);

 if (sc->irq_ih != ((void*)0))
  bus_teardown_intr(dev, sc->irq_res, sc->irq_ih);
 if (sc->clk_parent != ((void*)0))
  clk_release(sc->clk_parent);
 if (sc->clk_hdmi != ((void*)0))
  clk_release(sc->clk_hdmi);
 if (sc->hwreset_hdmi != ((void*)0))
  hwreset_release(sc->hwreset_hdmi);
 if (sc->supply_hdmi != ((void*)0))
  regulator_release(sc->supply_hdmi);
 if (sc->supply_pll != ((void*)0))
  regulator_release(sc->supply_pll);
 if (sc->supply_vdd != ((void*)0))
  regulator_release(sc->supply_vdd);
 if (sc->irq_res != ((void*)0))
  bus_release_resource(dev, SYS_RES_IRQ, 0, sc->irq_res);
 if (sc->mem_res != ((void*)0))
  bus_release_resource(dev, SYS_RES_MEMORY, 0, sc->mem_res);
 return (bus_generic_detach(dev));
}
