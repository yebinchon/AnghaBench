
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct aw_ccu_softc {int mtx; int bsh; int bst; int flags; } ;
typedef scalar_t__ phandle_t ;
typedef int * device_t ;
struct TYPE_2__ {int ocd_data; } ;


 int CCU_BASE ;
 int CCU_SIZE ;
 int MTX_DEF ;
 scalar_t__ OF_child (scalar_t__) ;
 scalar_t__ OF_peer (scalar_t__) ;
 TYPE_1__* aw_ccu_search_compatible () ;
 int bus_generic_attach (int *) ;
 int bus_get_bus_tag (int *) ;
 int bus_space_map (int ,int ,int ,int ,int *) ;
 int device_get_nameunit (int *) ;
 struct aw_ccu_softc* device_get_softc (int *) ;
 int device_printf (int *,char*,int) ;
 int device_probe_and_attach (int *) ;
 int mtx_init (int *,int ,int *,int ) ;
 scalar_t__ ofw_bus_get_node (int *) ;
 int * simplebus_add_device (int *,scalar_t__,int ,int *,int,int *) ;
 int simplebus_init (int *,scalar_t__) ;

__attribute__((used)) static int
aw_ccu_attach(device_t dev)
{
 struct aw_ccu_softc *sc;
 phandle_t node, child;
 device_t cdev;
 int error;

 sc = device_get_softc(dev);
 node = ofw_bus_get_node(dev);

 simplebus_init(dev, node);

 sc->flags = aw_ccu_search_compatible()->ocd_data;






 sc->bst = bus_get_bus_tag(dev);
 error = bus_space_map(sc->bst, CCU_BASE, CCU_SIZE, 0,
     &sc->bsh);
 if (error != 0) {
  device_printf(dev, "couldn't map CCU: %d\n", error);
  return (error);
 }

 mtx_init(&sc->mtx, device_get_nameunit(dev), ((void*)0), MTX_DEF);


 for (child = OF_child(node); child > 0; child = OF_peer(child)) {
  cdev = simplebus_add_device(dev, child, 0, ((void*)0), -1, ((void*)0));
  if (cdev != ((void*)0))
   device_probe_and_attach(cdev);
 }

 return (bus_generic_attach(dev));
}
