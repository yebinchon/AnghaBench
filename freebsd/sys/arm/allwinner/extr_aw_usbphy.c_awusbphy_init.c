
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct awusbphy_softc {int id_det_valid; int vbus_det_valid; int ** pmu; int * reg; struct aw_usbphy_conf* phy_conf; int vbus_det_pin; int id_det_pin; int * phy_ctrl; } ;
struct aw_usbphy_conf {int num_phys; } ;
typedef int regulator_t ;
typedef int pname ;
typedef int phandle_t ;
typedef int hwreset_t ;
typedef int device_t ;
typedef int clk_t ;
struct TYPE_2__ {scalar_t__ ocd_data; } ;


 int ENXIO ;
 int M_DEVBUF ;
 int M_WAITOK ;
 int M_ZERO ;
 int RF_ACTIVE ;
 int SYS_RES_MEMORY ;
 void* bus_alloc_resource_any (int ,int ,int*,int ) ;
 int clk_enable (int ) ;
 scalar_t__ clk_get_by_ofw_index (int ,int ,int,int *) ;
 int clk_get_name (int ) ;
 int compat_data ;
 struct awusbphy_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,...) ;
 int gpio_pin_get_by_ofw_property (int ,int ,char*,int *) ;
 int hwreset_deassert (int ) ;
 scalar_t__ hwreset_get_by_ofw_idx (int ,int ,int,int *) ;
 void* malloc (int,int ,int) ;
 scalar_t__ ofw_bus_find_string_index (int ,char*,char*,int*) ;
 int ofw_bus_get_node (int ) ;
 TYPE_1__* ofw_bus_search_compatible (int ,int ) ;
 scalar_t__ regulator_get_by_ofw_property (int ,int ,char*,int *) ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static int
awusbphy_init(device_t dev)
{
 struct awusbphy_softc *sc;
 phandle_t node;
 char pname[20];
 int error, off, rid;
 regulator_t reg;
 hwreset_t rst;
 clk_t clk;

 sc = device_get_softc(dev);
 node = ofw_bus_get_node(dev);

 sc->phy_conf = (struct aw_usbphy_conf *)ofw_bus_search_compatible(dev, compat_data)->ocd_data;


 if (ofw_bus_find_string_index(node, "reg-names", "phy_ctrl", &rid) != 0) {
  device_printf(dev, "Cannot locate phy control resource\n");
  return (ENXIO);
 }
 sc->phy_ctrl = bus_alloc_resource_any(dev, SYS_RES_MEMORY, &rid,
     RF_ACTIVE);
 if (sc->phy_ctrl == ((void*)0)) {
  device_printf(dev, "Cannot allocate resource\n");
  return (ENXIO);
 }


 for (off = 0; clk_get_by_ofw_index(dev, 0, off, &clk) == 0; off++) {
  error = clk_enable(clk);
  if (error != 0) {
   device_printf(dev, "couldn't enable clock %s\n",
       clk_get_name(clk));
   return (error);
  }
 }


 for (off = 0; hwreset_get_by_ofw_idx(dev, 0, off, &rst) == 0; off++) {
  error = hwreset_deassert(rst);
  if (error != 0) {
   device_printf(dev, "couldn't de-assert reset %d\n",
       off);
   return (error);
  }
 }


 error = gpio_pin_get_by_ofw_property(dev, node, "usb0_id_det-gpios",
     &sc->id_det_pin);
 if (error == 0)
  sc->id_det_valid = 1;
 error = gpio_pin_get_by_ofw_property(dev, node, "usb0_vbus_det-gpios",
     &sc->vbus_det_pin);
 if (error == 0)
  sc->vbus_det_valid = 1;

 sc->reg = malloc(sizeof(*(sc->reg)) * sc->phy_conf->num_phys, M_DEVBUF,
     M_WAITOK | M_ZERO);
 sc->pmu = malloc(sizeof(*(sc->pmu)) * sc->phy_conf->num_phys, M_DEVBUF,
     M_WAITOK | M_ZERO);

 for (off = 0; off < sc->phy_conf->num_phys; off++) {
  snprintf(pname, sizeof(pname), "usb%d_vbus-supply", off);
  if (regulator_get_by_ofw_property(dev, 0, pname, &reg) == 0)
   sc->reg[off] = reg;

  snprintf(pname, sizeof(pname), "pmu%d", off);
  if (ofw_bus_find_string_index(node, "reg-names",
      pname, &rid) != 0)
   continue;

  sc->pmu[off] = bus_alloc_resource_any(dev, SYS_RES_MEMORY, &rid,
      RF_ACTIVE);
  if (sc->pmu[off] == ((void*)0)) {
   device_printf(dev, "Cannot allocate resource\n");
   return (ENXIO);
  }
 }

 return (0);
}
