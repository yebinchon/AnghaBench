
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct TYPE_3__ {int ac_bias; int dma_burst_sz; int bpp; int fdd; int sync_ctrl; scalar_t__ sync_edge; scalar_t__ ac_bias_intrpt; } ;
struct am335x_lcd_softc {int sc_backlight; int sc_hdmi_evh; int sc_oid; int sc_dev; void* sc_mem_res; void* sc_irq_res; int sc_intr_hl; TYPE_1__ sc_panel; } ;
typedef int phandle_t ;
typedef int device_t ;


 int CTLFLAG_RW ;
 int CTLTYPE_INT ;
 int ENXIO ;
 int EVENTHANDLER_PRI_ANY ;
 int EVENTHANDLER_REGISTER (int ,int ,struct am335x_lcd_softc*,int ) ;
 int INTR_MPSAFE ;
 int INTR_TYPE_MISC ;
 int LCDC_CLK ;
 int LCD_LOCK_INIT (struct am335x_lcd_softc*) ;
 int OF_finddevice (char*) ;
 int OID_AUTO ;
 int PWM_PERIOD ;
 int PWM_UNIT ;
 int RF_ACTIVE ;
 int SYSCTL_ADD_PROC (struct sysctl_ctx_list*,int ,int ,char*,int,struct am335x_lcd_softc*,int ,int ,char*,char*) ;
 int SYSCTL_CHILDREN (struct sysctl_oid*) ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int am335x_lcd_configure (struct am335x_lcd_softc*) ;
 int am335x_lcd_hdmi_event ;
 int am335x_lcd_intr ;
 int am335x_lcd_sysctl_backlight ;
 scalar_t__ am335x_pwm_config_ecap (int ,int ,int ) ;
 int am335x_read_hdmi_property (int ) ;
 scalar_t__ am335x_read_panel_info (int ,int,TYPE_1__*) ;
 scalar_t__ am335x_read_timing (int ,int,TYPE_1__*) ;
 void* bus_alloc_resource_any (int ,int ,int*,int ) ;
 int bus_release_resource (int ,int ,int,void*) ;
 scalar_t__ bus_setup_intr (int ,void*,int,int *,int ,struct am335x_lcd_softc*,int *) ;
 struct am335x_lcd_softc* device_get_softc (int ) ;
 struct sysctl_ctx_list* device_get_sysctl_ctx (int ) ;
 struct sysctl_oid* device_get_sysctl_tree (int ) ;
 int device_printf (int ,char*) ;
 int fdt_find_compatible (int,char*,int) ;
 int hdmi_event ;
 int ti_prcm_clk_enable (int ) ;

__attribute__((used)) static int
am335x_lcd_attach(device_t dev)
{
 struct am335x_lcd_softc *sc;

 int err;
 int rid;
 struct sysctl_ctx_list *ctx;
 struct sysctl_oid *tree;
 phandle_t root, panel_node;

 err = 0;
 sc = device_get_softc(dev);
 sc->sc_dev = dev;

 am335x_read_hdmi_property(dev);

 root = OF_finddevice("/");
 if (root == -1) {
  device_printf(dev, "failed to get FDT root node\n");
  return (ENXIO);
 }

 sc->sc_panel.ac_bias = 255;
 sc->sc_panel.ac_bias_intrpt = 0;
 sc->sc_panel.dma_burst_sz = 16;
 sc->sc_panel.bpp = 16;
 sc->sc_panel.fdd = 128;
 sc->sc_panel.sync_edge = 0;
 sc->sc_panel.sync_ctrl = 1;

 panel_node = fdt_find_compatible(root, "ti,tilcdc,panel", 1);
 if (panel_node != 0) {
  device_printf(dev, "using static panel info\n");
  if (am335x_read_panel_info(dev, panel_node, &sc->sc_panel)) {
   device_printf(dev, "failed to read panel info\n");
   return (ENXIO);
  }

  if (am335x_read_timing(dev, panel_node, &sc->sc_panel)) {
   device_printf(dev, "failed to read timings\n");
   return (ENXIO);
  }
 }

 ti_prcm_clk_enable(LCDC_CLK);

 rid = 0;
 sc->sc_mem_res = bus_alloc_resource_any(dev, SYS_RES_MEMORY, &rid,
     RF_ACTIVE);
 if (!sc->sc_mem_res) {
  device_printf(dev, "cannot allocate memory window\n");
  return (ENXIO);
 }

 rid = 0;
 sc->sc_irq_res = bus_alloc_resource_any(dev, SYS_RES_IRQ, &rid,
     RF_ACTIVE);
 if (!sc->sc_irq_res) {
  bus_release_resource(dev, SYS_RES_MEMORY, 0, sc->sc_mem_res);
  device_printf(dev, "cannot allocate interrupt\n");
  return (ENXIO);
 }

 if (bus_setup_intr(dev, sc->sc_irq_res, INTR_TYPE_MISC | INTR_MPSAFE,
   ((void*)0), am335x_lcd_intr, sc,
   &sc->sc_intr_hl) != 0) {
  bus_release_resource(dev, SYS_RES_IRQ, rid,
      sc->sc_irq_res);
  bus_release_resource(dev, SYS_RES_MEMORY, rid,
      sc->sc_mem_res);
  device_printf(dev, "Unable to setup the irq handler.\n");
  return (ENXIO);
 }

 LCD_LOCK_INIT(sc);


 ctx = device_get_sysctl_ctx(sc->sc_dev);
 tree = device_get_sysctl_tree(sc->sc_dev);
 sc->sc_oid = SYSCTL_ADD_PROC(ctx, SYSCTL_CHILDREN(tree), OID_AUTO,
     "backlight", CTLTYPE_INT | CTLFLAG_RW, sc, 0,
     am335x_lcd_sysctl_backlight, "I", "LCD backlight");
 sc->sc_backlight = 0;

 if (am335x_pwm_config_ecap(PWM_UNIT,
     PWM_PERIOD, PWM_PERIOD) == 0)
  sc->sc_backlight = 100;

 if (panel_node != 0)
  am335x_lcd_configure(sc);
 else
  sc->sc_hdmi_evh = EVENTHANDLER_REGISTER(hdmi_event,
      am335x_lcd_hdmi_event, sc, EVENTHANDLER_PRI_ANY);

 return (0);
}
