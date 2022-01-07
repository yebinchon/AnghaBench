
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct firmware_softc {int dev; } ;
typedef int phandle_t ;
typedef int device_t ;


 int ENXIO ;
 int OF_child (int) ;
 int OF_peer (int) ;
 int bus_generic_attach (int ) ;
 int bus_generic_probe (int ) ;
 struct firmware_softc* device_get_softc (int ) ;
 int ofw_bus_get_node (int ) ;
 int simplebus_add_device (int ,int,int ,int *,int,int *) ;
 int simplebus_init (int ,int) ;

__attribute__((used)) static int
firmware_attach(device_t dev)
{
 struct firmware_softc *sc;
 phandle_t node;

 sc = device_get_softc(dev);
 sc->dev = dev;

 node = ofw_bus_get_node(dev);
 if (node == -1)
  return (ENXIO);

 simplebus_init(dev, node);




 bus_generic_probe(dev);




 for (node = OF_child(node); node > 0; node = OF_peer(node))
  simplebus_add_device(dev, node, 0, ((void*)0), -1, ((void*)0));

 return (bus_generic_attach(dev));
}
