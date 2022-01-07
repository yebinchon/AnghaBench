
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct padctl_softc {int dev; } ;
struct padctl_port {int type; int internal; int enabled; int * lane; int idx; int supply_vbus; int companion; } ;
typedef int phandle_t ;


 int ENXIO ;
 int OF_getencprop (int ,char*,int *,int) ;
 int OF_getprop_alloc (int ,char*,void**) ;
 scalar_t__ OF_hasprop (int ,char*) ;
 int OF_prop_free (char*) ;
 int PADCTL_PAD_HSIC ;
 int PADCTL_PAD_ULPI ;
 int PADCTL_PAD_USB2 ;




 int device_printf (int ,char*,...) ;
 int regulator_get_by_ofw_property (int ,int ,char*,int *) ;
 void* search_pad_lane (struct padctl_softc*,int ,int ) ;
 struct padctl_port* search_port (struct padctl_softc*,char*) ;
 int * search_usb3_pad_lane (struct padctl_softc*,int ) ;

__attribute__((used)) static int
process_port(struct padctl_softc *sc, phandle_t node)
{

 struct padctl_port *port;
 char *name;
 int rv;

 name = ((void*)0);
 rv = OF_getprop_alloc(node, "name", (void **)&name);
 if (rv <= 0) {
  device_printf(sc->dev, "Cannot read port name.\n");
  return (ENXIO);
 }

 port = search_port(sc, name);
 if (port == ((void*)0)) {
  device_printf(sc->dev, "Unknown port: %s\n", name);
  rv = ENXIO;
  goto end;
 }

 if (port->type == 128) {
  rv = OF_getencprop(node, "nvidia,usb2-companion",
     &(port->companion), sizeof(port->companion));
  if (rv <= 0) {
   device_printf(sc->dev,
       "Missing 'nvidia,usb2-companion' property "
       "for port: %s\n", name);
   rv = ENXIO;
   goto end;
  }
 }

 if (OF_hasprop(node, "vbus-supply")) {
  rv = regulator_get_by_ofw_property(sc->dev, 0,
      "vbus-supply", &port->supply_vbus);
  if (rv <= 0) {
   device_printf(sc->dev,
       "Cannot get 'vbus-supply' regulator "
       "for port: %s\n", name);
   rv = ENXIO;
   goto end;
  }
 }

 if (OF_hasprop(node, "nvidia,internal"))
  port->internal = 1;

 if (port->lane == ((void*)0)) {
  switch(port->type) {

  case 129:
   port->lane = search_pad_lane(sc, PADCTL_PAD_USB2,
       port->idx);
   break;
  case 130:
   port->lane = search_pad_lane(sc, PADCTL_PAD_ULPI,
       port->idx);
   break;
  case 131:
   port->lane = search_pad_lane(sc, PADCTL_PAD_HSIC,
       port->idx);
   break;
  case 128:
   port->lane = search_usb3_pad_lane(sc, port->idx);
   break;
  }
 }
 if (port->lane == ((void*)0)) {
  device_printf(sc->dev, "Cannot find lane for port: %s\n", name);
  rv = ENXIO;
  goto end;
 }
 port->enabled = 1;
 rv = 0;
end:
 if (name != ((void*)0))
  OF_prop_free(name);
 return (rv);
}
