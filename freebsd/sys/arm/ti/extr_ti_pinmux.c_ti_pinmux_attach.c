
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_pinmux_softc {int * sc_res; int sc_bsh; int sc_bst; int sc_dev; } ;
typedef int device_t ;


 int ENXIO ;
 scalar_t__ bus_alloc_resources (int ,int ,int *) ;
 struct ti_pinmux_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int fdt_pinctrl_configure_tree (int ) ;
 int fdt_pinctrl_register (int ,char*) ;
 int rman_get_bushandle (int ) ;
 int rman_get_bustag (int ) ;
 int ti_pinmux_res_spec ;
 struct ti_pinmux_softc* ti_pinmux_sc ;

__attribute__((used)) static int
ti_pinmux_attach(device_t dev)
{
 struct ti_pinmux_softc *sc = device_get_softc(dev);






 sc->sc_dev = dev;

 if (bus_alloc_resources(dev, ti_pinmux_res_spec, sc->sc_res)) {
  device_printf(dev, "could not allocate resources\n");
  return (ENXIO);
 }

 sc->sc_bst = rman_get_bustag(sc->sc_res[0]);
 sc->sc_bsh = rman_get_bushandle(sc->sc_res[0]);

 if (ti_pinmux_sc == ((void*)0))
  ti_pinmux_sc = sc;

 fdt_pinctrl_register(dev, "pinctrl-single,pins");
 fdt_pinctrl_configure_tree(dev);

 return (0);
}
