
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct arm_tmr_softc {int irqrid; int memrid; int dev; scalar_t__ clkfreq; } ;
typedef int phandle_t ;
typedef scalar_t__ pcell_t ;
typedef int device_t ;
typedef int clock ;
struct TYPE_2__ {int ocd_data; } ;


 int ENXIO ;
 scalar_t__ OF_getencprop (int ,char*,scalar_t__*,int) ;
 int TMR_GBL ;
 int TMR_PRV ;
 int arm_set_delay (int ,struct arm_tmr_softc*) ;
 int arm_tmr_delay ;
 scalar_t__ arm_tmr_freq ;
 scalar_t__ arm_tmr_freq_varies ;
 int attach_et (struct arm_tmr_softc*) ;
 int attach_tc (struct arm_tmr_softc*) ;
 scalar_t__ bootverbose ;
 int compat_data ;
 struct arm_tmr_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int ofw_bus_get_node (int ) ;
 TYPE_1__* ofw_bus_search_compatible (int ,int ) ;

__attribute__((used)) static int
arm_tmr_attach(device_t dev)
{
 struct arm_tmr_softc *sc;
 phandle_t node;
 pcell_t clock;
 int et_err, tc_err, tmrtype;

 sc = device_get_softc(dev);
 sc->dev = dev;

 if (arm_tmr_freq_varies) {
  sc->clkfreq = arm_tmr_freq;
 } else {
  if (arm_tmr_freq != 0) {
   sc->clkfreq = arm_tmr_freq;
  } else {

   node = ofw_bus_get_node(dev);
   if ((OF_getencprop(node, "clock-frequency", &clock,
       sizeof(clock))) <= 0) {
    device_printf(dev, "missing clock-frequency "
        "attribute in FDT\n");
    return (ENXIO);
   }
   sc->clkfreq = clock;
  }
 }

 tmrtype = ofw_bus_search_compatible(dev, compat_data)->ocd_data;
 tc_err = ENXIO;
 et_err = ENXIO;
 if (tmrtype & TMR_GBL) {
  if (!arm_tmr_freq_varies)
   tc_err = attach_tc(sc);
  else if (bootverbose)
   device_printf(sc->dev,
       "not using variable-frequency device as timecounter\n");
  sc->memrid++;
  sc->irqrid++;
 }


 if (tmrtype & TMR_PRV) {
  et_err = attach_et(sc);
 }





 if (tc_err != 0 && et_err != 0) {
  return (ENXIO);
 }
 return (0);
}
