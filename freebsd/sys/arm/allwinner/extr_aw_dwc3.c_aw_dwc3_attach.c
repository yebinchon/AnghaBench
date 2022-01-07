
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aw_dwc3_softc {int sc; int rst_bus; int clk_bus; int * dev; } ;
typedef scalar_t__ phandle_t ;
typedef int * device_t ;


 int ENXIO ;
 scalar_t__ OF_child (scalar_t__) ;
 scalar_t__ OF_peer (scalar_t__) ;
 int bus_generic_attach (int *) ;
 int clk_enable (int ) ;
 scalar_t__ clk_get_by_ofw_name (int *,int ,char*,int *) ;
 int clk_get_name (int ) ;
 struct aw_dwc3_softc* device_get_softc (int *) ;
 int device_printf (int *,char*,...) ;
 int device_probe_and_attach (int *) ;
 scalar_t__ hwreset_deassert (int ) ;
 scalar_t__ hwreset_get_by_ofw_name (int *,scalar_t__,char*,int *) ;
 scalar_t__ ofw_bus_get_node (int *) ;
 int * simplebus_add_device (int *,scalar_t__,int ,int *,int,int *) ;
 scalar_t__ simplebus_fill_ranges (scalar_t__,int *) ;
 int simplebus_init (int *,scalar_t__) ;

__attribute__((used)) static int
aw_dwc3_attach(device_t dev)
{
 struct aw_dwc3_softc *sc;
 device_t cdev;
 phandle_t node, child;
 int err;

 sc = device_get_softc(dev);
 sc->dev = dev;
 node = ofw_bus_get_node(dev);


 if (clk_get_by_ofw_name(dev, 0, "bus", &sc->clk_bus) != 0) {
  device_printf(dev, "Cannot get bus clock\n");
  return (ENXIO);
 }
 err = clk_enable(sc->clk_bus);
 if (err != 0) {
  device_printf(dev, "Could not enable clock %s\n",
      clk_get_name(sc->clk_bus));
  return (ENXIO);
 }


 if (hwreset_get_by_ofw_name(dev, node, "bus", &sc->rst_bus) == 0) {
  if (hwreset_deassert(sc->rst_bus) != 0) {
   device_printf(dev, "Cannot deassert reset\n");
   return (ENXIO);
  }
 }

 simplebus_init(dev, node);
 if (simplebus_fill_ranges(node, &sc->sc) < 0) {
  device_printf(dev, "could not get ranges\n");
  return (ENXIO);
 }

 for (child = OF_child(node); child > 0; child = OF_peer(child)) {
  cdev = simplebus_add_device(dev, child, 0, ((void*)0), -1, ((void*)0));
  if (cdev != ((void*)0))
   device_probe_and_attach(cdev);
 }

 return (bus_generic_attach(dev));
}
