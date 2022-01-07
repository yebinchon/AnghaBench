
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct armada_thermal_softc {int * tdata; } ;
typedef int device_t ;


 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 int armada380_tdata ;
 struct armada_thermal_softc* device_get_softc (int ) ;
 int device_set_desc (int ,char*) ;
 scalar_t__ ofw_bus_is_compatible (int ,char*) ;
 int ofw_bus_status_okay (int ) ;

__attribute__((used)) static int
armada_thermal_probe(device_t dev)
{
 struct armada_thermal_softc *sc;

 sc = device_get_softc(dev);

 if (!ofw_bus_status_okay(dev))
  return (ENXIO);

 if (ofw_bus_is_compatible(dev, "marvell,armada380-thermal")) {
  device_set_desc(dev, "Armada380 Thermal Control");
  sc->tdata = &armada380_tdata;

  return (BUS_PROBE_DEFAULT);
 }

 return (ENXIO);
}
