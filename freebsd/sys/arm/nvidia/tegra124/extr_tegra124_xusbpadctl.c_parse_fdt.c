
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct padctl_softc {int dev; } ;
typedef scalar_t__ phandle_t ;


 int ENXIO ;
 scalar_t__ OF_child (scalar_t__) ;
 scalar_t__ OF_peer (scalar_t__) ;
 int device_printf (int ,char*) ;
 scalar_t__ ofw_bus_find_child (scalar_t__,char*) ;
 int ofw_bus_node_status_okay (scalar_t__) ;
 int process_pad (struct padctl_softc*,scalar_t__) ;
 int process_port (struct padctl_softc*,scalar_t__) ;

__attribute__((used)) static int
parse_fdt(struct padctl_softc *sc, phandle_t base_node)
{
 phandle_t node;
 int rv;

 rv = 0;
 node = ofw_bus_find_child(base_node, "pads");

 if (node <= 0) {
  device_printf(sc->dev, "Cannot find pads subnode.\n");
  return (ENXIO);
 }
 for (node = OF_child(node); node != 0; node = OF_peer(node)) {
  if (!ofw_bus_node_status_okay(node))
   continue;
  rv = process_pad(sc, node);
  if (rv != 0)
   return (rv);
 }

 node = ofw_bus_find_child(base_node, "ports");
 if (node <= 0) {
  device_printf(sc->dev, "Cannot find ports subnode.\n");
  return (ENXIO);
 }
 for (node = OF_child(node); node != 0; node = OF_peer(node)) {
  if (!ofw_bus_node_status_okay(node))
   continue;
  rv = process_port(sc, node);
  if (rv != 0)
   return (rv);
 }

 return (0);
}
