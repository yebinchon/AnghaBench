
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dc_softc {int * mem_res; int * irq_res; int * hwreset_dc; int * clk_dc; int * clk_parent; int * irq_ih; int dev; } ;
typedef int device_t ;


 int LOCK_DESTROY (struct dc_softc*) ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int TEGRA_DRM_DEREGISTER_CLIENT (int ,int ) ;
 int bus_generic_detach (int ) ;
 int bus_release_resource (int ,int ,int ,int *) ;
 int bus_teardown_intr (int ,int *,int *) ;
 int clk_release (int *) ;
 int device_get_parent (int ) ;
 struct dc_softc* device_get_softc (int ) ;
 int hwreset_release (int *) ;

__attribute__((used)) static int
dc_detach(device_t dev)
{
 struct dc_softc *sc;

 sc = device_get_softc(dev);

 TEGRA_DRM_DEREGISTER_CLIENT(device_get_parent(sc->dev), sc->dev);

 if (sc->irq_ih != ((void*)0))
  bus_teardown_intr(dev, sc->irq_res, sc->irq_ih);
 if (sc->clk_parent != ((void*)0))
  clk_release(sc->clk_parent);
 if (sc->clk_dc != ((void*)0))
  clk_release(sc->clk_dc);
 if (sc->hwreset_dc != ((void*)0))
  hwreset_release(sc->hwreset_dc);
 if (sc->irq_res != ((void*)0))
  bus_release_resource(dev, SYS_RES_IRQ, 0, sc->irq_res);
 if (sc->mem_res != ((void*)0))
  bus_release_resource(dev, SYS_RES_MEMORY, 0, sc->mem_res);
 LOCK_DESTROY(sc);

 return (bus_generic_detach(dev));
}
