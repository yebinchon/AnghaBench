
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap4_wugen_sc {int * sc_mem_res; int * sc_parent; int sc_dev; } ;
typedef int phandle_t ;
typedef int parent_xref ;
typedef int device_t ;


 int ENXIO ;
 int * OF_device_from_xref (int ) ;
 int OF_getencprop (int ,char*,int *,int) ;
 int OF_xref_from_node (int ) ;
 int RF_ACTIVE ;
 int SYS_RES_MEMORY ;
 int * bus_alloc_resource_any (int ,int ,int*,int ) ;
 struct omap4_wugen_sc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int * intr_pic_register (int ,int ) ;
 int ofw_bus_get_node (int ) ;
 int omap4_wugen_detach (int ) ;

__attribute__((used)) static int
omap4_wugen_attach(device_t dev)
{
 struct omap4_wugen_sc *sc;
 phandle_t node;
 phandle_t parent_xref;
 int rid, rv;

 sc = device_get_softc(dev);
 sc->sc_dev = dev;
 node = ofw_bus_get_node(dev);

 rv = OF_getencprop(node, "interrupt-parent", &parent_xref,
     sizeof(parent_xref));
 if (rv <= 0) {
  device_printf(dev, "can't read parent node property\n");
  goto fail;
 }
 sc->sc_parent = OF_device_from_xref(parent_xref);
 if (sc->sc_parent == ((void*)0)) {
  device_printf(dev, "can't find parent controller\n");
  goto fail;
 }

 rid = 0;
 sc->sc_mem_res = bus_alloc_resource_any(dev, SYS_RES_MEMORY, &rid,
     RF_ACTIVE);
 if (sc->sc_mem_res == ((void*)0)) {
  device_printf(dev, "can't allocate resources\n");
  return (ENXIO);
 }

 if (intr_pic_register(dev, OF_xref_from_node(node)) == ((void*)0)) {
  device_printf(dev, "can't register PIC\n");
  goto fail;
 }
 return (0);

fail:
 omap4_wugen_detach(dev);
 return (ENXIO);
}
