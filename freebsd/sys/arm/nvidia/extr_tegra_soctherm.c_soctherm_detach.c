
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct soctherm_softc {int * mem_res; int * irq_res; int * reset; int * soctherm_clk; int * tsensor_clk; int * irq_ih; } ;
typedef int device_t ;


 int ENXIO ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int bus_release_resource (int ,int ,int ,int *) ;
 int bus_teardown_intr (int ,int *,int *) ;
 int clk_release (int *) ;
 struct soctherm_softc* device_get_softc (int ) ;
 int hwreset_release (int *) ;
 int soctherm_sysctl_ctx ;
 int sysctl_ctx_free (int *) ;

__attribute__((used)) static int
soctherm_detach(device_t dev)
{
 struct soctherm_softc *sc;
 sc = device_get_softc(dev);

 if (sc->irq_ih != ((void*)0))
  bus_teardown_intr(dev, sc->irq_res, sc->irq_ih);
 sysctl_ctx_free(&soctherm_sysctl_ctx);
 if (sc->tsensor_clk != ((void*)0))
  clk_release(sc->tsensor_clk);
 if (sc->soctherm_clk != ((void*)0))
  clk_release(sc->soctherm_clk);
 if (sc->reset != ((void*)0))
  hwreset_release(sc->reset);
 if (sc->irq_res != ((void*)0))
  bus_release_resource(dev, SYS_RES_IRQ, 0, sc->irq_res);
 if (sc->mem_res != ((void*)0))
  bus_release_resource(dev, SYS_RES_MEMORY, 0, sc->mem_res);

 return (ENXIO);
}
