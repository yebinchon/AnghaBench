
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_sysc_softc {int sc; int * dev; } ;
typedef scalar_t__ phandle_t ;
typedef int * device_t ;


 int ENXIO ;
 scalar_t__ OF_child (scalar_t__) ;
 scalar_t__ OF_peer (scalar_t__) ;
 int bus_generic_attach (int *) ;
 struct ti_sysc_softc* device_get_softc (int *) ;
 int device_printf (int *,char*) ;
 int device_probe_and_attach (int *) ;
 scalar_t__ ofw_bus_get_node (int *) ;
 int * simplebus_add_device (int *,scalar_t__,int ,int *,int,int *) ;
 scalar_t__ simplebus_fill_ranges (scalar_t__,int *) ;
 int simplebus_init (int *,scalar_t__) ;

__attribute__((used)) static int
ti_sysc_attach(device_t dev)
{
 struct ti_sysc_softc *sc;
 device_t cdev;
 phandle_t node, child;

 sc = device_get_softc(dev);
 sc->dev = dev;
 node = ofw_bus_get_node(dev);

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
