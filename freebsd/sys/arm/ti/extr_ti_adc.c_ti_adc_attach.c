
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ti_adc_softc {int sc_tsc_wires; int sc_coord_readouts; int sc_adc_nchannels; int* sc_adc_channels; int sc_x; int sc_y; scalar_t__ sc_pen_down; int sc_evdev; void* sc_mem_res; void* sc_irq_res; int sc_intrhand; int sc_dev; void* sc_charge_delay; void* sc_x_plate_resistance; } ;
typedef scalar_t__ phandle_t ;
typedef void* pcell_t ;
typedef int device_t ;
typedef int cell ;


 int ABS_X ;
 int ABS_Y ;
 int ADC_CLKDIV ;
 int ADC_CTRL ;
 int ADC_CTRL_STEP_ID ;
 int ADC_CTRL_STEP_WP ;
 int ADC_MAX_VALUE ;
 int ADC_READ4 (struct ti_adc_softc*,int ) ;
 int ADC_REVISION ;
 int ADC_REV_CUSTOM_MSK ;
 int ADC_REV_CUSTOM_SHIFT ;
 int ADC_REV_FUNC_MSK ;
 int ADC_REV_FUNC_SHIFT ;
 int ADC_REV_MAJOR_MSK ;
 int ADC_REV_MAJOR_SHIFT ;
 int ADC_REV_MINOR_MSK ;
 int ADC_REV_RTL_MSK ;
 int ADC_REV_RTL_SHIFT ;
 int ADC_REV_SCHEME_MSK ;
 int ADC_REV_SCHEME_SHIFT ;
 int ADC_WRITE4 (struct ti_adc_softc*,int ,int) ;
 int BTN_TOUCH ;
 int BUS_VIRTUAL ;
 void* DEFAULT_CHARGE_DELAY ;
 int EINVAL ;
 int ENXIO ;
 int EV_ABS ;
 int EV_KEY ;
 int EV_SYN ;
 int INPUT_PROP_DIRECT ;
 int INTR_MPSAFE ;
 int INTR_TYPE_MISC ;
 scalar_t__ OF_getencprop (scalar_t__,char*,void**,int) ;
 void* OF_getencprop_alloc_multi (scalar_t__,char*,int,void**) ;
 scalar_t__ OF_hasprop (scalar_t__,char*) ;
 int OF_prop_free (int*) ;
 int RF_ACTIVE ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int TI_ADC_LOCK (struct ti_adc_softc*) ;
 int TI_ADC_LOCK_INIT (struct ti_adc_softc*) ;
 int TI_ADC_NPINS ;
 int TI_ADC_UNLOCK (struct ti_adc_softc*) ;
 int TSC_ADC_CLK ;
 void* bus_alloc_resource_any (int ,int ,int*,int ) ;
 int bus_release_resource (int ,int ,int ,void*) ;
 scalar_t__ bus_setup_intr (int ,void*,int,int *,int ,struct ti_adc_softc*,int *) ;
 int device_get_desc (int ) ;
 int device_get_nameunit (int ) ;
 struct ti_adc_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,...) ;
 int evdev_alloc () ;
 int evdev_register (int ) ;
 int evdev_set_id (int ,int ,int ,int ,int ) ;
 int evdev_set_name (int ,int ) ;
 int evdev_set_phys (int ,int ) ;
 int evdev_support_abs (int ,int ,int ,int ,int ,int ,int ,int ) ;
 int evdev_support_event (int ,int ) ;
 int evdev_support_key (int ,int ) ;
 int evdev_support_prop (int ,int ) ;
 scalar_t__ ofw_bus_find_child (scalar_t__,char*) ;
 scalar_t__ ofw_bus_get_node (int ) ;
 int ti_adc_config_wires (struct ti_adc_softc*,int*,int) ;
 int ti_adc_detach (int ) ;
 int ti_adc_idlestep_init (struct ti_adc_softc*) ;
 int ti_adc_inputs_init (struct ti_adc_softc*) ;
 int ti_adc_intr ;
 int ti_adc_setup (struct ti_adc_softc*) ;
 int ti_adc_sysctl_init (struct ti_adc_softc*) ;
 int ti_adc_tsc_init (struct ti_adc_softc*) ;
 int ti_prcm_clk_enable (int ) ;

__attribute__((used)) static int
ti_adc_attach(device_t dev)
{
 int err, rid, i;
 struct ti_adc_softc *sc;
 uint32_t rev, reg;
 phandle_t node, child;
 pcell_t cell;
 int *channels;
 int nwire_configs;
 int *wire_configs;

 sc = device_get_softc(dev);
 sc->sc_dev = dev;

 node = ofw_bus_get_node(dev);

 sc->sc_tsc_wires = 0;
 sc->sc_coord_readouts = 1;
 sc->sc_x_plate_resistance = 0;
 sc->sc_charge_delay = DEFAULT_CHARGE_DELAY;

 child = ofw_bus_find_child(node, "tsc");
 if (child != 0 && OF_hasprop(child, "ti,wires")) {
  if ((OF_getencprop(child, "ti,wires", &cell, sizeof(cell))) > 0)
   sc->sc_tsc_wires = cell;
  if ((OF_getencprop(child, "ti,coordinate-readouts", &cell,
      sizeof(cell))) > 0)
   sc->sc_coord_readouts = cell;
  if ((OF_getencprop(child, "ti,x-plate-resistance", &cell,
      sizeof(cell))) > 0)
   sc->sc_x_plate_resistance = cell;
  if ((OF_getencprop(child, "ti,charge-delay", &cell,
      sizeof(cell))) > 0)
   sc->sc_charge_delay = cell;
  nwire_configs = OF_getencprop_alloc_multi(child,
      "ti,wire-config", sizeof(*wire_configs),
      (void **)&wire_configs);
  if (nwire_configs != sc->sc_tsc_wires) {
   device_printf(sc->sc_dev,
       "invalid number of ti,wire-config: %d (should be %d)\n",
       nwire_configs, sc->sc_tsc_wires);
   OF_prop_free(wire_configs);
   return (EINVAL);
  }
  err = ti_adc_config_wires(sc, wire_configs, nwire_configs);
  OF_prop_free(wire_configs);
  if (err)
   return (EINVAL);
 }


 child = ofw_bus_find_child(node, "adc");
 if (child != 0) {
  sc->sc_adc_nchannels = OF_getencprop_alloc_multi(child,
      "ti,adc-channels", sizeof(*channels), (void **)&channels);
  if (sc->sc_adc_nchannels > 0) {
   for (i = 0; i < sc->sc_adc_nchannels; i++)
    sc->sc_adc_channels[i] = channels[i];
   OF_prop_free(channels);
  }
 }


 if (sc->sc_tsc_wires + sc->sc_adc_nchannels > TI_ADC_NPINS) {
  device_printf(dev, "total number of chanels (%d) is larger than %d\n",
      sc->sc_tsc_wires + sc->sc_adc_nchannels, TI_ADC_NPINS);
  return (ENXIO);
 }

 rid = 0;
 sc->sc_mem_res = bus_alloc_resource_any(dev, SYS_RES_MEMORY, &rid,
     RF_ACTIVE);
 if (!sc->sc_mem_res) {
  device_printf(dev, "cannot allocate memory window\n");
  return (ENXIO);
 }


 err = ti_prcm_clk_enable(TSC_ADC_CLK);
 if (err)
  return (err);

 rid = 0;
 sc->sc_irq_res = bus_alloc_resource_any(dev, SYS_RES_IRQ, &rid,
     RF_ACTIVE);
 if (!sc->sc_irq_res) {
  bus_release_resource(dev, SYS_RES_MEMORY, 0, sc->sc_mem_res);
  device_printf(dev, "cannot allocate interrupt\n");
  return (ENXIO);
 }

 if (bus_setup_intr(dev, sc->sc_irq_res, INTR_TYPE_MISC | INTR_MPSAFE,
     ((void*)0), ti_adc_intr, sc, &sc->sc_intrhand) != 0) {
  bus_release_resource(dev, SYS_RES_IRQ, 0, sc->sc_irq_res);
  bus_release_resource(dev, SYS_RES_MEMORY, 0, sc->sc_mem_res);
  device_printf(dev, "Unable to setup the irq handler.\n");
  return (ENXIO);
 }


 rev = ADC_READ4(sc, ADC_REVISION);
 device_printf(dev,
     "scheme: %#x func: %#x rtl: %d rev: %d.%d custom rev: %d\n",
     (rev & ADC_REV_SCHEME_MSK) >> ADC_REV_SCHEME_SHIFT,
     (rev & ADC_REV_FUNC_MSK) >> ADC_REV_FUNC_SHIFT,
     (rev & ADC_REV_RTL_MSK) >> ADC_REV_RTL_SHIFT,
     (rev & ADC_REV_MAJOR_MSK) >> ADC_REV_MAJOR_SHIFT,
     rev & ADC_REV_MINOR_MSK,
     (rev & ADC_REV_CUSTOM_MSK) >> ADC_REV_CUSTOM_SHIFT);

 reg = ADC_READ4(sc, ADC_CTRL);
 ADC_WRITE4(sc, ADC_CTRL, reg | ADC_CTRL_STEP_WP | ADC_CTRL_STEP_ID);






 if (sc->sc_tsc_wires)
  ADC_WRITE4(sc, ADC_CLKDIV, 24 - 1);
 else
  ADC_WRITE4(sc, ADC_CLKDIV, 2400 - 1);

 TI_ADC_LOCK_INIT(sc);

 ti_adc_idlestep_init(sc);
 ti_adc_inputs_init(sc);
 ti_adc_sysctl_init(sc);
 ti_adc_tsc_init(sc);

 TI_ADC_LOCK(sc);
 ti_adc_setup(sc);
 TI_ADC_UNLOCK(sc);
 return (0);
}
