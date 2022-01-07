
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra124_coretemp_softc {int dev; int * tsens_dev; scalar_t__ cpu_id; scalar_t__ tsens_id; } ;
typedef scalar_t__ phandle_t ;
typedef int pcell_t ;


 int ENXIO ;
 int * OF_device_from_xref (scalar_t__) ;
 scalar_t__ OF_peer (int ) ;
 int OF_prop_free (int *) ;
 int device_printf (int ,char*,...) ;
 scalar_t__ ofw_bus_find_child (scalar_t__,char*) ;
 int ofw_bus_parse_xref_list_alloc (scalar_t__,char*,char*,int ,scalar_t__*,int*,int **) ;

__attribute__((used)) static int
tegra124_coretemp_ofw_parse(struct tegra124_coretemp_softc *sc)
{
 int rv, ncells;
 phandle_t node, xnode;
 pcell_t *cells;

 node = OF_peer(0);
 node = ofw_bus_find_child(node, "thermal-zones");
 if (node <= 0) {
  device_printf(sc->dev, "Cannot find 'thermal-zones'.\n");
  return (ENXIO);
 }

 node = ofw_bus_find_child(node, "cpu");
 if (node <= 0) {
  device_printf(sc->dev, "Cannot find 'cpu'\n");
  return (ENXIO);
 }
 rv = ofw_bus_parse_xref_list_alloc(node, "thermal-sensors",
     "#thermal-sensor-cells", 0, &xnode, &ncells, &cells);
 if (rv != 0) {
  device_printf(sc->dev,
      "Cannot parse 'thermal-sensors' property.\n");
  return (ENXIO);
 }
 if (ncells != 1) {
  device_printf(sc->dev,
      "Invalid format of 'thermal-sensors' property(%d).\n",
      ncells);
  return (ENXIO);
 }

 sc->tsens_id = 0x100 + sc->cpu_id;
 OF_prop_free(cells);

 sc->tsens_dev = OF_device_from_xref(xnode);
 if (sc->tsens_dev == ((void*)0)) {
  device_printf(sc->dev,
      "Cannot find thermal sensors device.");
  return (ENXIO);
 }
 return (0);
}
