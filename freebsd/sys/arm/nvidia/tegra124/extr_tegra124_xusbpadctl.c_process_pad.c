
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct padctl_softc {int dev; } ;
struct padctl_pad {int enabled; } ;
typedef scalar_t__ phandle_t ;


 int ENXIO ;
 scalar_t__ OF_child (scalar_t__) ;
 int OF_getprop_alloc (scalar_t__,char*,void**) ;
 scalar_t__ OF_peer (scalar_t__) ;
 int OF_prop_free (char*) ;
 int device_printf (int ,char*,...) ;
 scalar_t__ ofw_bus_find_child (scalar_t__,char*) ;
 int ofw_bus_node_status_okay (scalar_t__) ;
 int process_lane (struct padctl_softc*,scalar_t__,struct padctl_pad*) ;
 struct padctl_pad* search_pad (struct padctl_softc*,char*) ;

__attribute__((used)) static int
process_pad(struct padctl_softc *sc, phandle_t node)
{
 struct padctl_pad *pad;
 char *name;
 int rv;

 name = ((void*)0);
 rv = OF_getprop_alloc(node, "name", (void **)&name);
 if (rv <= 0) {
  device_printf(sc->dev, "Cannot read pad name.\n");
  return (ENXIO);
 }
 pad = search_pad(sc, name);
 if (pad == ((void*)0)) {
  device_printf(sc->dev, "Unknown pad: %s\n", name);
  rv = ENXIO;
  goto end;
 }


 node = ofw_bus_find_child(node, "lanes");
 if (node <= 0) {
  device_printf(sc->dev, "Cannot find regulators subnode\n");
  rv = ENXIO;
  goto end;
 }

 for (node = OF_child(node); node != 0; node = OF_peer(node)) {
  if (!ofw_bus_node_status_okay(node))
   continue;

  rv = process_lane(sc, node, pad);
  if (rv != 0)
   goto end;
 }
 pad->enabled = 1;
 rv = 0;
end:
 if (name != ((void*)0))
  OF_prop_free(name);
 return (rv);
}
