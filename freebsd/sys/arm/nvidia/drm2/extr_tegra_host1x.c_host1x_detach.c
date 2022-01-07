
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct host1x_softc {int * mem_res; int * syncpt_irq_res; int * gen_irq_res; int * syncpt_irq_h; int * reset; int * clk; int * tegra_drm; int * gen_irq_h; } ;
typedef int device_t ;


 int DRM_MEM_DRIVER ;
 int LOCK_DESTROY (struct host1x_softc*) ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int bus_generic_detach (int ) ;
 int bus_release_resource (int ,int ,int,int *) ;
 int bus_teardown_intr (int ,int *,int *) ;
 int clk_release (int *) ;
 struct host1x_softc* device_get_softc (int ) ;
 int free (int *,int ) ;
 int host1x_drm_exit (struct host1x_softc*) ;
 int hwreset_release (int *) ;

__attribute__((used)) static int
host1x_detach(device_t dev)
{
 struct host1x_softc *sc;

 sc = device_get_softc(dev);

 host1x_drm_exit(sc);

 if (sc->gen_irq_h != ((void*)0))
  bus_teardown_intr(dev, sc->gen_irq_res, sc->gen_irq_h);
 if (sc->tegra_drm != ((void*)0))
  free(sc->tegra_drm, DRM_MEM_DRIVER);
 if (sc->clk != ((void*)0))
  clk_release(sc->clk);
 if (sc->reset != ((void*)0))
  hwreset_release(sc->reset);
 if (sc->syncpt_irq_h != ((void*)0))
  bus_teardown_intr(dev, sc->syncpt_irq_res, sc->syncpt_irq_h);
 if (sc->gen_irq_res != ((void*)0))
  bus_release_resource(dev, SYS_RES_IRQ, 1, sc->gen_irq_res);
 if (sc->syncpt_irq_res != ((void*)0))
  bus_release_resource(dev, SYS_RES_IRQ, 0, sc->syncpt_irq_res);
 if (sc->mem_res != ((void*)0))
  bus_release_resource(dev, SYS_RES_MEMORY, 0, sc->mem_res);
 LOCK_DESTROY(sc);
 return (bus_generic_detach(dev));
}
