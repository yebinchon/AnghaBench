
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mv_ap806_gicp_softc {struct intr_map_data_fdt* parent_map_data; int spi_ranges; int spi_ranges_cnt; int * parent; int dev; } ;
struct intr_map_data_fdt {int dummy; } ;
typedef int phandle_t ;
typedef int device_t ;


 int ENXIO ;
 int INTR_MAP_DATA_FDT ;
 int M_WAITOK ;
 int M_ZERO ;
 int * OF_device_from_xref (int ) ;
 int OF_device_register_xref (int ,int ) ;
 int OF_getencprop_alloc (int ,char*,void**) ;
 int OF_xref_from_node (int ) ;
 struct mv_ap806_gicp_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 scalar_t__ intr_alloc_map_data (int ,int,int) ;
 int * intr_pic_register (int ,int ) ;
 int ofw_bus_find_iparent (int ) ;
 int ofw_bus_get_node (int ) ;

__attribute__((used)) static int
mv_ap806_gicp_attach(device_t dev)
{
 struct mv_ap806_gicp_softc *sc;
 phandle_t node, xref, intr_parent;

 sc = device_get_softc(dev);
 sc->dev = dev;
 node = ofw_bus_get_node(dev);


 if ((intr_parent = ofw_bus_find_iparent(node)) == 0) {
  device_printf(dev,
       "Cannot find our parent interrupt controller\n");
  return (ENXIO);
 }
 if ((sc->parent = OF_device_from_xref(intr_parent)) == ((void*)0)) {
  device_printf(dev,
       "cannot find parent interrupt controller device\n");
  return (ENXIO);
 }

 sc->spi_ranges_cnt = OF_getencprop_alloc(node, "marvell,spi-ranges",
     (void **)&sc->spi_ranges);

 xref = OF_xref_from_node(node);
 if (intr_pic_register(dev, xref) == ((void*)0)) {
  device_printf(dev, "Cannot register GICP\n");
  return (ENXIO);
 }

 sc->parent_map_data = (struct intr_map_data_fdt *)intr_alloc_map_data(
     INTR_MAP_DATA_FDT, sizeof(struct intr_map_data_fdt) +
     + 3 * sizeof(phandle_t), M_WAITOK | M_ZERO);
 OF_device_register_xref(xref, dev);

 return (0);
}
