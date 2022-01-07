
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct pl310_softc {int sc_rtl_revision; int sc_io_coherent; int sc_enabled; TYPE_1__* sc_ich; int * sc_irq_res; int sc_mtx; int * sc_mem_res; int sc_dev; } ;
typedef int phandle_t ;
typedef int device_t ;
struct TYPE_6__ {int cf_l2cache_drain_writebuf; int cf_l2cache_wb_range; int cf_l2cache_inv_range; int cf_l2cache_wbinv_range; int (* cf_l2cache_wbinv_all ) () ;} ;
struct TYPE_5__ {struct pl310_softc* ich_arg; int ich_func; } ;


 int CACHE_ID_PARTNUM_MASK ;
 int CACHE_ID_PARTNUM_SHIFT ;
 int CACHE_ID_RELEASE_MASK ;
 int CACHE_ID_RELEASE_SHIFT ;
 int CTRL_DISABLED ;
 int CTRL_ENABLED ;
 int DEBUG_CTRL_DISABLE_LINEFILL ;
 int DEBUG_CTRL_DISABLE_WRITEBACK ;
 int ENXIO ;
 int MTX_SPIN ;
 int M_DEVBUF ;
 int M_WAITOK ;
 scalar_t__ OF_hasprop (int ,char*) ;
 int PL310_CACHE_ID ;
 int PL310_CTRL ;
 int PL310_DEBUG_CTRL ;
 int PL310_INV_WAY ;
 int RF_ACTIVE ;
 int RF_SHAREABLE ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 scalar_t__ bootverbose ;
 void* bus_alloc_resource_any (int ,int ,int*,int) ;
 scalar_t__ config_intrhook_establish (TYPE_1__*) ;
 TYPE_3__ cpufuncs ;
 int device_get_name (int ) ;
 struct pl310_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,...) ;
 int free (TYPE_1__*,int ) ;
 int g_l2cache_line_size ;
 int g_l2cache_size ;
 int g_ways_assoc ;
 TYPE_1__* malloc (int,int ,int ) ;
 int mtx_init (int *,char*,int *,int ) ;
 int ofw_bus_get_node (int ) ;
 int panic (char*,int ) ;
 int pl310_config_intr ;
 int pl310_drain_writebuf ;
 int pl310_enabled ;
 int pl310_inv_range ;
 int pl310_print_config (struct pl310_softc*) ;
 int pl310_read4 (struct pl310_softc*,int ) ;
 int pl310_set_way_sizes (struct pl310_softc*) ;
 struct pl310_softc* pl310_softc ;
 int pl310_wait_background_op (int ,int) ;
 int pl310_wb_range ;
 int pl310_wbinv_all () ;
 int pl310_wbinv_range ;
 int pl310_write4 (struct pl310_softc*,int ,int) ;
 int platform_pl310_init (struct pl310_softc*) ;
 int platform_pl310_write_ctrl (struct pl310_softc*,int) ;
 int platform_pl310_write_debug (struct pl310_softc*,int) ;

__attribute__((used)) static int
pl310_attach(device_t dev)
{
 struct pl310_softc *sc = device_get_softc(dev);
 int rid;
 uint32_t cache_id, debug_ctrl;
 phandle_t node;

 sc->sc_dev = dev;
 rid = 0;
 sc->sc_mem_res = bus_alloc_resource_any(dev, SYS_RES_MEMORY, &rid,
     RF_ACTIVE);
 if (sc->sc_mem_res == ((void*)0))
  panic("%s: Cannot map registers", device_get_name(dev));


 rid = 0;
 sc->sc_irq_res = bus_alloc_resource_any(dev, SYS_RES_IRQ, &rid,
                                         RF_ACTIVE | RF_SHAREABLE);
 if (sc->sc_irq_res == ((void*)0)) {
  device_printf(dev, "cannot allocate IRQ, not using interrupt\n");
 }

 pl310_softc = sc;
 mtx_init(&sc->sc_mtx, "pl310lock", ((void*)0), MTX_SPIN);

 cache_id = pl310_read4(sc, PL310_CACHE_ID);
 sc->sc_rtl_revision = (cache_id >> CACHE_ID_RELEASE_SHIFT) &
     CACHE_ID_RELEASE_MASK;
 device_printf(dev, "Part number: 0x%x, release: 0x%x\n",
     (cache_id >> CACHE_ID_PARTNUM_SHIFT) & CACHE_ID_PARTNUM_MASK,
     (cache_id >> CACHE_ID_RELEASE_SHIFT) & CACHE_ID_RELEASE_MASK);






 node = ofw_bus_get_node(dev);
 if (OF_hasprop(node, "arm,io-coherent"))
  sc->sc_io_coherent = 1;
 if (pl310_read4(sc, PL310_CTRL) & CTRL_ENABLED) {
  device_printf(dev, "Warning: L2 Cache should not already be "
      "active; trying to de-activate and re-initialize...\n");
  sc->sc_enabled = 1;
  debug_ctrl = pl310_read4(sc, PL310_DEBUG_CTRL);
  platform_pl310_write_debug(sc, debug_ctrl |
      DEBUG_CTRL_DISABLE_WRITEBACK | DEBUG_CTRL_DISABLE_LINEFILL);
  pl310_set_way_sizes(sc);
  pl310_wbinv_all();
  platform_pl310_write_ctrl(sc, CTRL_DISABLED);
  platform_pl310_write_debug(sc, debug_ctrl);
 }
 sc->sc_enabled = pl310_enabled;

 if (sc->sc_enabled) {
  platform_pl310_init(sc);
  pl310_set_way_sizes(sc);
  pl310_write4(pl310_softc, PL310_INV_WAY, 0xffff);
  pl310_wait_background_op(PL310_INV_WAY, 0xffff);
  platform_pl310_write_ctrl(sc, CTRL_ENABLED);
  device_printf(dev, "L2 Cache enabled: %uKB/%dB %d ways\n",
      (g_l2cache_size / 1024), g_l2cache_line_size, g_ways_assoc);
  if (bootverbose)
   pl310_print_config(sc);
 } else {
  if (sc->sc_irq_res != ((void*)0)) {
   sc->sc_ich = malloc(sizeof(*sc->sc_ich), M_DEVBUF, M_WAITOK);
   sc->sc_ich->ich_func = pl310_config_intr;
   sc->sc_ich->ich_arg = sc;
   if (config_intrhook_establish(sc->sc_ich) != 0) {
    device_printf(dev,
        "config_intrhook_establish failed\n");
    free(sc->sc_ich, M_DEVBUF);
    return(ENXIO);
   }
  }

  device_printf(dev, "L2 Cache disabled\n");
 }


 cpufuncs.cf_l2cache_wbinv_all = pl310_wbinv_all;
 cpufuncs.cf_l2cache_wbinv_range = pl310_wbinv_range;
 cpufuncs.cf_l2cache_inv_range = pl310_inv_range;
 cpufuncs.cf_l2cache_wb_range = pl310_wb_range;
 cpufuncs.cf_l2cache_drain_writebuf = pl310_drain_writebuf;

 return (0);
}
