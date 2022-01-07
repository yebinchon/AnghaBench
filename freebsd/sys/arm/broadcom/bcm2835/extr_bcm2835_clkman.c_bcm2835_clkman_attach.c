
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcm2835_clkman_softc {int sc_m_res; int sc_m_bsh; int sc_m_bst; int sc_dev; } ;
typedef int device_t ;


 int ENXIO ;
 int RF_ACTIVE ;
 int SYS_RES_MEMORY ;
 int bus_alloc_resource_any (int ,int ,int*,int ) ;
 int bus_generic_attach (int ) ;
 struct bcm2835_clkman_softc* device_get_softc (int ) ;
 scalar_t__ device_get_unit (int ) ;
 int device_printf (int ,char*) ;
 int rman_get_bushandle (int ) ;
 int rman_get_bustag (int ) ;

__attribute__((used)) static int
bcm2835_clkman_attach(device_t dev)
{
 struct bcm2835_clkman_softc *sc;
 int rid;

 if (device_get_unit(dev) != 0) {
  device_printf(dev, "only one clk manager supported\n");
  return (ENXIO);
 }

 sc = device_get_softc(dev);
 sc->sc_dev = dev;

 rid = 0;
 sc->sc_m_res = bus_alloc_resource_any(dev, SYS_RES_MEMORY, &rid,
     RF_ACTIVE);
 if (!sc->sc_m_res) {
  device_printf(dev, "cannot allocate memory window\n");
  return (ENXIO);
 }

 sc->sc_m_bst = rman_get_bustag(sc->sc_m_res);
 sc->sc_m_bsh = rman_get_bushandle(sc->sc_m_res);

 return (bus_generic_attach(dev));
}
