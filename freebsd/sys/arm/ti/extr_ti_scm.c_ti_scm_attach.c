
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_scm_softc {int * sc_res; int sc_bsh; int sc_bst; int sc_dev; } ;
typedef int device_t ;


 int ENXIO ;
 scalar_t__ bus_alloc_resources (int ,int ,int *) ;
 int bus_generic_attach (int ) ;
 int bus_generic_probe (int ) ;
 struct ti_scm_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int rman_get_bushandle (int ) ;
 int rman_get_bustag (int ) ;
 int ti_scm_res_spec ;
 struct ti_scm_softc* ti_scm_sc ;

__attribute__((used)) static int
ti_scm_attach(device_t dev)
{
 struct ti_scm_softc *sc = device_get_softc(dev);

 sc->sc_dev = dev;

 if (bus_alloc_resources(dev, ti_scm_res_spec, sc->sc_res)) {
  device_printf(dev, "could not allocate resources\n");
  return (ENXIO);
 }


 sc->sc_bst = rman_get_bustag(sc->sc_res[0]);
 sc->sc_bsh = rman_get_bushandle(sc->sc_res[0]);

 ti_scm_sc = sc;


 bus_generic_probe(dev);

 return (bus_generic_attach(dev));
}
