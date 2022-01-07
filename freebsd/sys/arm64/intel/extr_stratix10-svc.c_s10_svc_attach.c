
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s10_svc_softc {int * callfn; int dev; } ;
typedef int phandle_t ;
typedef int device_t ;


 int ENXIO ;
 struct s10_svc_softc* device_get_softc (int ) ;
 scalar_t__ device_get_unit (int ) ;
 int ofw_bus_get_node (int ) ;
 scalar_t__ s10_get_memory (struct s10_svc_softc*) ;
 int * s10_svc_get_callfn (struct s10_svc_softc*,int ) ;

__attribute__((used)) static int
s10_svc_attach(device_t dev)
{
 struct s10_svc_softc *sc;
 phandle_t node;

 node = ofw_bus_get_node(dev);

 sc = device_get_softc(dev);
 sc->dev = dev;

 if (device_get_unit(dev) != 0)
  return (ENXIO);

 sc->callfn = s10_svc_get_callfn(sc, node);
 if (sc->callfn == ((void*)0))
  return (ENXIO);

 if (s10_get_memory(sc) != 0)
  return (ENXIO);

 return (0);
}
