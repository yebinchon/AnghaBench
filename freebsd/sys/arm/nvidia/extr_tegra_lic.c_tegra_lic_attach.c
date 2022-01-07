
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_lic_sc {int ** mem_res; int * parent; int dev; } ;
typedef int phandle_t ;
typedef int parent_xref ;
typedef int device_t ;


 int ENXIO ;
 int LIC_CPU_IEP_CLASS ;
 int LIC_CPU_IER_CLR ;
 int * OF_device_from_xref (int ) ;
 int OF_getencprop (int ,char*,int *,int) ;
 int OF_xref_from_node (int ) ;
 int WR4 (struct tegra_lic_sc*,int,int ,int) ;
 scalar_t__ bus_alloc_resources (int ,int ,int **) ;
 int bus_release_resources (int ,int ,int **) ;
 struct tegra_lic_sc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int * intr_pic_register (int ,int ) ;
 int lic_spec ;
 int nitems (int ) ;
 int ofw_bus_get_node (int ) ;

__attribute__((used)) static int
tegra_lic_attach(device_t dev)
{
 struct tegra_lic_sc *sc;
 phandle_t node;
 phandle_t parent_xref;
 int i, rv;

 sc = device_get_softc(dev);
 sc->dev = dev;
 node = ofw_bus_get_node(dev);

 rv = OF_getencprop(node, "interrupt-parent", &parent_xref,
     sizeof(parent_xref));
 if (rv <= 0) {
  device_printf(dev, "Cannot read parent node property\n");
  goto fail;
 }
 sc->parent = OF_device_from_xref(parent_xref);
 if (sc->parent == ((void*)0)) {
  device_printf(dev, "Cannott find parent controller\n");
  goto fail;
 }

 if (bus_alloc_resources(dev, lic_spec, sc->mem_res)) {
  device_printf(dev, "Cannott allocate resources\n");
  goto fail;
 }


 for (i = 0; i < nitems(lic_spec); i++) {
  if (sc->mem_res[i] == ((void*)0))
   continue;
  WR4(sc, i, LIC_CPU_IER_CLR, 0xFFFFFFFF);
  WR4(sc, i, LIC_CPU_IEP_CLASS, 0);
 }


 if (intr_pic_register(dev, OF_xref_from_node(node)) == ((void*)0)) {
  device_printf(dev, "Cannot register PIC\n");
  goto fail;
 }
 return (0);

fail:
 bus_release_resources(dev, lic_spec, sc->mem_res);
 return (ENXIO);
}
