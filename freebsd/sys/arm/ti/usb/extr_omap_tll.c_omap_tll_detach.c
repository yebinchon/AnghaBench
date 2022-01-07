
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_tll_softc {int * tll_mem_res; int tll_mem_rid; } ;
typedef int device_t ;


 int SYS_RES_MEMORY ;
 int bus_release_resource (int ,int ,int ,int *) ;
 struct omap_tll_softc* device_get_softc (int ) ;
 int omap_tll_disable (struct omap_tll_softc*) ;
 int * omap_tll_sc ;

__attribute__((used)) static int
omap_tll_detach(device_t dev)
{
 struct omap_tll_softc *sc;

 sc = device_get_softc(dev);
 omap_tll_disable(sc);


 if (sc->tll_mem_res) {
  bus_release_resource(dev, SYS_RES_MEMORY,
      sc->tll_mem_rid, sc->tll_mem_res);
  sc->tll_mem_res = ((void*)0);
 }

 omap_tll_sc = ((void*)0);

 return (0);
}
