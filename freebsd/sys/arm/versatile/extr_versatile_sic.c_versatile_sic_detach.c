
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct versatile_sic_softc {int mtx; int * irq_res; int * mem_res; scalar_t__ intrh; } ;
typedef int device_t ;


 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int bus_release_resource (int ,int ,int ,int *) ;
 int bus_teardown_intr (int ,int *,scalar_t__) ;
 struct versatile_sic_softc* device_get_softc (int ) ;
 int mtx_destroy (int *) ;
 int rman_get_rid (int *) ;

__attribute__((used)) static int
versatile_sic_detach(device_t dev)
{
 struct versatile_sic_softc *sc;

 sc = device_get_softc(dev);

 if (sc->intrh)
  bus_teardown_intr(dev, sc->irq_res, sc->intrh);

 if (sc->mem_res == ((void*)0))
  bus_release_resource(dev, SYS_RES_MEMORY,
   rman_get_rid(sc->mem_res), sc->mem_res);

 if (sc->irq_res == ((void*)0))
  bus_release_resource(dev, SYS_RES_IRQ,
   rman_get_rid(sc->irq_res), sc->irq_res);

 mtx_destroy(&sc->mtx);

 return (0);

}
