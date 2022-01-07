
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct arm_gic_fdt_softc {int size_cells; int addr_cells; } ;
struct TYPE_3__ {int obd_name; } ;
struct arm_gic_devinfo {TYPE_1__ obdinfo; int rl; } ;
typedef scalar_t__ phandle_t ;
typedef int * device_t ;


 int M_DEVBUF ;
 int M_WAITOK ;
 int M_ZERO ;
 scalar_t__ OF_child (scalar_t__) ;
 scalar_t__ OF_peer (scalar_t__) ;
 scalar_t__ arm_gic_fill_ranges (scalar_t__,struct arm_gic_fdt_softc*) ;
 int * device_add_child (int *,int *,int) ;
 struct arm_gic_fdt_softc* device_get_softc (int *) ;
 int device_printf (int *,char*,...) ;
 int device_set_ivars (int *,struct arm_gic_devinfo*) ;
 int free (struct arm_gic_devinfo*,int ) ;
 struct arm_gic_devinfo* malloc (int,int ,int) ;
 int ofw_bus_gen_destroy_devinfo (TYPE_1__*) ;
 scalar_t__ ofw_bus_gen_setup_devinfo (TYPE_1__*,scalar_t__) ;
 scalar_t__ ofw_bus_get_node (int *) ;
 int ofw_bus_reg_to_rl (int *,scalar_t__,int ,int ,int *) ;
 int resource_list_free (int *) ;
 int resource_list_init (int *) ;

__attribute__((used)) static bool
arm_gic_add_children(device_t dev)
{
 struct arm_gic_fdt_softc *sc;
 struct arm_gic_devinfo *dinfo;
 phandle_t child, node;
 device_t cdev;

 sc = device_get_softc(dev);
 node = ofw_bus_get_node(dev);


 child = OF_child(node);
 if (child == 0)
  return (0);

 if (arm_gic_fill_ranges(node, sc) < 0) {
  device_printf(dev, "Have a child, but no ranges\n");
  return (0);
 }

 for (; child != 0; child = OF_peer(child)) {
  dinfo = malloc(sizeof(*dinfo), M_DEVBUF, M_WAITOK | M_ZERO);

  if (ofw_bus_gen_setup_devinfo(&dinfo->obdinfo, child) != 0) {
   free(dinfo, M_DEVBUF);
   continue;
  }

  resource_list_init(&dinfo->rl);
  ofw_bus_reg_to_rl(dev, child, sc->addr_cells,
      sc->size_cells, &dinfo->rl);

  cdev = device_add_child(dev, ((void*)0), -1);
  if (cdev == ((void*)0)) {
   device_printf(dev, "<%s>: device_add_child failed\n",
       dinfo->obdinfo.obd_name);
   resource_list_free(&dinfo->rl);
   ofw_bus_gen_destroy_devinfo(&dinfo->obdinfo);
   free(dinfo, M_DEVBUF);
   continue;
  }
  device_set_ivars(cdev, dinfo);
 }

 return (1);
}
