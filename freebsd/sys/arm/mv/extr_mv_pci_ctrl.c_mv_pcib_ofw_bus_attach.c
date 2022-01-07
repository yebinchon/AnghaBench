
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mv_pcib_ctrl_softc {int addr_cells; int size_cells; } ;
struct TYPE_5__ {int obd_name; } ;
struct mv_pcib_ctrl_devinfo {int di_rl; TYPE_2__ di_dinfo; } ;
typedef scalar_t__ phandle_t ;
typedef int (* get_rl_t ) (int *,scalar_t__,int,int,int *) ;
typedef int * device_t ;
struct TYPE_4__ {scalar_t__ ocd_data; } ;


 int ENXIO ;
 int M_PCIB_CTRL ;
 int M_WAITOK ;
 int M_ZERO ;
 scalar_t__ OF_child (scalar_t__) ;
 scalar_t__ OF_getencprop (scalar_t__,char*,int*,int) ;
 scalar_t__ OF_peer (scalar_t__) ;
 scalar_t__ bootverbose ;
 int * device_add_child (int *,int *,int) ;
 struct mv_pcib_ctrl_softc* device_get_softc (int *) ;
 int device_printf (int *,char*,...) ;
 int device_set_ivars (int *,struct mv_pcib_ctrl_devinfo*) ;
 int free (struct mv_pcib_ctrl_devinfo*,int ) ;
 struct mv_pcib_ctrl_devinfo* malloc (int,int ,int) ;
 int mv_pcib_ctrl_compat ;
 scalar_t__ mv_pcib_ctrl_fill_ranges (scalar_t__,struct mv_pcib_ctrl_softc*) ;
 int ofw_bus_gen_destroy_devinfo (TYPE_2__*) ;
 scalar_t__ ofw_bus_gen_setup_devinfo (TYPE_2__*,scalar_t__) ;
 scalar_t__ ofw_bus_get_node (int *) ;
 TYPE_1__* ofw_bus_search_compatible (int *,int ) ;
 int resource_list_init (int *) ;

__attribute__((used)) static int
mv_pcib_ofw_bus_attach(device_t dev)
{
 struct mv_pcib_ctrl_devinfo *di;
 struct mv_pcib_ctrl_softc *sc;
 device_t child;
 phandle_t parent, node;
 get_rl_t get_rl;

 parent = ofw_bus_get_node(dev);
 sc = device_get_softc(dev);
 if (parent > 0) {
  sc->addr_cells = 1;
  if (OF_getencprop(parent, "#address-cells", &(sc->addr_cells),
      sizeof(sc->addr_cells)) <= 0)
   return(ENXIO);

  sc->size_cells = 1;
  if (OF_getencprop(parent, "#size-cells", &(sc->size_cells),
      sizeof(sc->size_cells)) <= 0)
   return(ENXIO);

  for (node = OF_child(parent); node > 0; node = OF_peer(node)) {
   di = malloc(sizeof(*di), M_PCIB_CTRL, M_WAITOK | M_ZERO);
   if (ofw_bus_gen_setup_devinfo(&di->di_dinfo, node)) {
    if (bootverbose) {
     device_printf(dev,
         "Could not set up devinfo for PCI\n");
    }
    free(di, M_PCIB_CTRL);
    continue;
   }

   child = device_add_child(dev, ((void*)0), -1);
   if (child == ((void*)0)) {
    if (bootverbose) {
     device_printf(dev,
         "Could not add child: %s\n",
         di->di_dinfo.obd_name);
    }
    ofw_bus_gen_destroy_devinfo(&di->di_dinfo);
    free(di, M_PCIB_CTRL);
    continue;
   }

   resource_list_init(&di->di_rl);
   get_rl = (get_rl_t) ofw_bus_search_compatible(dev,
       mv_pcib_ctrl_compat)->ocd_data;
   if (get_rl != ((void*)0))
    get_rl(child, node, sc->addr_cells,
        sc->size_cells, &di->di_rl);

   device_set_ivars(child, di);
  }
 }

 if (mv_pcib_ctrl_fill_ranges(parent, sc) < 0) {
  device_printf(dev, "could not get ranges\n");
  return (ENXIO);
 }

 return (0);
}
