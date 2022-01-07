
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct twl_softc {int sc_type; int sc_dev; } ;
typedef int phandle_t ;
typedef int device_t ;


 int ENXIO ;
 int OF_getproplen (int ,char*) ;




 struct twl_softc* device_get_softc (int ) ;
 int device_set_desc (int ,char*) ;
 char* ofw_bus_get_compat (int ) ;
 int ofw_bus_get_node (int ) ;
 int strlen (char const*) ;
 scalar_t__ strncasecmp (char const*,char*,int) ;

__attribute__((used)) static int
twl_probe(device_t dev)
{
 phandle_t node;
 const char *compat;
 int len, l;
 struct twl_softc *sc;

 if ((compat = ofw_bus_get_compat(dev)) == ((void*)0))
  return (ENXIO);

 if ((node = ofw_bus_get_node(dev)) == 0)
  return (ENXIO);


 if ((len = OF_getproplen(node, "compatible")) <= 0)
  return (ENXIO);

 sc = device_get_softc(dev);
 sc->sc_dev = dev;
 sc->sc_type = 128;

 while (len > 0) {
  if (strncasecmp(compat, "ti,twl6030", 10) == 0)
   sc->sc_type = 129;
  else if (strncasecmp(compat, "ti,twl6025", 10) == 0)
   sc->sc_type = 130;
  else if (strncasecmp(compat, "ti,twl4030", 10) == 0)
   sc->sc_type = 131;

  if (sc->sc_type != 128)
   break;


  l = strlen(compat) + 1;
  compat += l;
  len -= l;
 }

 switch (sc->sc_type) {
 case 131:
  device_set_desc(dev, "TI TWL4030/TPS659x0 Companion IC");
  break;
 case 130:
  device_set_desc(dev, "TI TWL6025 Companion IC");
  break;
 case 129:
  device_set_desc(dev, "TI TWL6030 Companion IC");
  break;
 case 128:
 default:
  return (ENXIO);
 }

 return (0);
}
