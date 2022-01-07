
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_tll_softc {int tll_mem_res; scalar_t__ tll_mem_rid; int sc_dev; } ;
typedef int device_t ;


 int ENXIO ;
 int RF_ACTIVE ;
 int SYS_RES_MEMORY ;
 int bus_alloc_resource_any (int ,int ,scalar_t__*,int ) ;
 struct omap_tll_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int omap_tll_detach (int ) ;
 int omap_tll_init (struct omap_tll_softc*) ;
 struct omap_tll_softc* omap_tll_sc ;

__attribute__((used)) static int
omap_tll_attach(device_t dev)
{
 struct omap_tll_softc *sc;

 sc = device_get_softc(dev);

 sc->sc_dev = dev;


 sc->tll_mem_rid = 0;
 sc->tll_mem_res = bus_alloc_resource_any(dev, SYS_RES_MEMORY,
     &sc->tll_mem_rid, RF_ACTIVE);
 if (!sc->tll_mem_res) {
  device_printf(dev, "Error: Could not map TLL memory\n");
  goto error;
 }

 omap_tll_init(sc);

 omap_tll_sc = sc;

 return (0);

error:
 omap_tll_detach(dev);
 return (ENXIO);
}
