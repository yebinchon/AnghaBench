
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ccm_softc {int dummy; } ;
typedef scalar_t__ phandle_t ;


 scalar_t__ OF_child (scalar_t__) ;
 scalar_t__ OF_finddevice (char*) ;
 int OF_getprop_alloc (scalar_t__,char*,void**) ;
 int OF_getproplen (scalar_t__,char*) ;
 scalar_t__ OF_parent (scalar_t__) ;
 scalar_t__ OF_peer (scalar_t__) ;
 int ofw_bus_node_status_okay (scalar_t__) ;
 int set_clock (struct ccm_softc*,char*) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static int
ccm_fdt_set(struct ccm_softc *sc)
{
 phandle_t child, parent, root;
 int len;
 char *fdt_config, *name;

 root = OF_finddevice("/");
 len = 0;
 parent = root;


 for (child = OF_child(parent); child != 0; child = OF_peer(child)) {


  while (OF_child(child)) {
   parent = child;
   child = OF_child(child);
  }

  if (!ofw_bus_node_status_okay(child))
   continue;

  if ((len = OF_getproplen(child, "clock_names")) > 0) {
   len = OF_getproplen(child, "clock_names");
   OF_getprop_alloc(child, "clock_names",
       (void **)&fdt_config);

   while (len > 0) {
    name = fdt_config;
    fdt_config += strlen(name) + 1;
    len -= strlen(name) + 1;
    set_clock(sc, name);
   }
  }

  if (OF_peer(child) == 0) {

   child = parent;
   parent = OF_parent(child);
  }
 }

 return (0);
}
