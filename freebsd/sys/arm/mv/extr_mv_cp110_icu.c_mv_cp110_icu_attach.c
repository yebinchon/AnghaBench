
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mv_cp110_icu_softc {int res; struct intr_map_data_fdt* parent_map_data; int * parent; int dev; } ;
struct intr_map_data_fdt {int dummy; } ;
typedef int phandle_t ;
typedef int device_t ;


 int ENXIO ;
 int INTR_MAP_DATA_FDT ;
 int M_WAITOK ;
 int M_ZERO ;
 int * OF_device_from_xref (int ) ;
 scalar_t__ OF_getencprop (int ,char*,int *,int) ;
 int OF_xref_from_node (int ) ;
 scalar_t__ bus_alloc_resources (int ,int ,int *) ;
 int bus_release_resources (int ,int ,int *) ;
 struct mv_cp110_icu_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 scalar_t__ intr_alloc_map_data (int ,int,int) ;
 int * intr_pic_register (int ,int ) ;
 int mv_cp110_icu_res_spec ;
 int ofw_bus_get_node (int ) ;

__attribute__((used)) static int
mv_cp110_icu_attach(device_t dev)
{
 struct mv_cp110_icu_softc *sc;
 phandle_t node, msi_parent;

 sc = device_get_softc(dev);
 sc->dev = dev;
 node = ofw_bus_get_node(dev);

 if (OF_getencprop(node, "msi-parent", &msi_parent,
     sizeof(phandle_t)) <= 0) {
  device_printf(dev, "cannot find msi-parent property\n");
  return (ENXIO);
 }

 if ((sc->parent = OF_device_from_xref(msi_parent)) == ((void*)0)) {
  device_printf(dev, "cannot find msi-parent device\n");
  return (ENXIO);
 }
 if (bus_alloc_resources(dev, mv_cp110_icu_res_spec, &sc->res) != 0) {
  device_printf(dev, "cannot allocate resources for device\n");
  return (ENXIO);
 }

 if (intr_pic_register(dev, OF_xref_from_node(node)) == ((void*)0)) {
  device_printf(dev, "Cannot register ICU\n");
  goto fail;
 }


 sc->parent_map_data = (struct intr_map_data_fdt *)intr_alloc_map_data(
     INTR_MAP_DATA_FDT, sizeof(struct intr_map_data_fdt) +
     + 3 * sizeof(phandle_t), M_WAITOK | M_ZERO);
 return (0);

fail:
 bus_release_resources(dev, mv_cp110_icu_res_spec, &sc->res);
 return (ENXIO);
}
