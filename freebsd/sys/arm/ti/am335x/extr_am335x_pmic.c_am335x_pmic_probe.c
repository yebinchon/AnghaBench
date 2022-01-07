
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct am335x_pmic_softc {int sc_addr; int sc_dev; } ;
typedef int device_t ;


 int ENXIO ;
 struct am335x_pmic_softc* device_get_softc (int ) ;
 int device_set_desc (int ,char*) ;
 int iicbus_get_addr (int ) ;
 int ofw_bus_is_compatible (int ,char*) ;

__attribute__((used)) static int
am335x_pmic_probe(device_t dev)
{
 struct am335x_pmic_softc *sc;

 if (!ofw_bus_is_compatible(dev, "ti,tps65217"))
  return (ENXIO);

 sc = device_get_softc(dev);
 sc->sc_dev = dev;

 sc->sc_addr = iicbus_get_addr(dev);

 device_set_desc(dev, "TI TPS65217 Power Management IC");

 return (0);
}
