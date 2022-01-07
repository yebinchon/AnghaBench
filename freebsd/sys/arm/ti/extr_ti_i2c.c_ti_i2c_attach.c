
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct ti_i2c_softc {scalar_t__ clk_id; int sc_rev; int sc_fifo_trsh; int sc_timeout; int * sc_iicbus; int sc_irq_h; int * sc_irq_res; int * sc_mem_res; int sc_dev; } ;
struct sysctl_oid_list {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
typedef int phandle_t ;
typedef int ich_func_t ;
typedef int device_t ;


 int CTLFLAG_MPSAFE ;
 int CTLFLAG_RD ;
 int CTLFLAG_RW ;
 int CTLTYPE_UINT ;
 int ENXIO ;
 int I2C_BUFSTAT_FIFODEPTH_MASK ;
 int I2C_BUFSTAT_FIFODEPTH_SHIFT ;
 int I2C_REG_BUFSTAT ;
 int I2C_REG_REVNB_HI ;
 int INTR_MPSAFE ;
 int INTR_TYPE_MISC ;
 scalar_t__ INVALID_CLK_IDENT ;
 int OID_AUTO ;
 int RF_ACTIVE ;
 int RF_SHAREABLE ;
 int SYSCTL_ADD_PROC (struct sysctl_ctx_list*,struct sysctl_oid_list*,int ,char*,int,struct ti_i2c_softc*,int ,int ,char*,char*) ;
 struct sysctl_oid_list* SYSCTL_CHILDREN (int ) ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int TI_I2C_LOCK_DESTROY (struct ti_i2c_softc*) ;
 int TI_I2C_LOCK_INIT (struct ti_i2c_softc*) ;
 void* bus_alloc_resource_any (int ,int ,int*,int) ;
 scalar_t__ bus_generic_attach ;
 int bus_release_resource (int ,int ,int ,int *) ;
 int bus_setup_intr (int ,int *,int,int *,int ,struct ti_i2c_softc*,int *) ;
 int config_intrhook_oneshot (int ,int ) ;
 int * device_add_child (int ,char*,int) ;
 struct ti_i2c_softc* device_get_softc (int ) ;
 struct sysctl_ctx_list* device_get_sysctl_ctx (int ) ;
 int device_get_sysctl_tree (int ) ;
 int device_printf (int ,char*,...) ;
 int hz ;
 int ofw_bus_get_node (int ) ;
 scalar_t__ ti_hwmods_get_clock (int ) ;
 int ti_i2c_activate (int ) ;
 int ti_i2c_deactivate (int ) ;
 int ti_i2c_intr ;
 int ti_i2c_read_2 (struct ti_i2c_softc*,int ) ;
 int ti_i2c_sysctl_clk ;
 int ti_i2c_sysctl_timeout ;

__attribute__((used)) static int
ti_i2c_attach(device_t dev)
{
 int err, rid;
 phandle_t node;
 struct ti_i2c_softc *sc;
 struct sysctl_ctx_list *ctx;
 struct sysctl_oid_list *tree;
 uint16_t fifosz;

  sc = device_get_softc(dev);
 sc->sc_dev = dev;


 node = ofw_bus_get_node(dev);

 sc->clk_id = ti_hwmods_get_clock(dev);
 if (sc->clk_id == INVALID_CLK_IDENT) {
  device_printf(dev, "failed to get device id using ti,hwmod\n");
  return (ENXIO);
 }


 rid = 0;
 sc->sc_mem_res = bus_alloc_resource_any(dev, SYS_RES_MEMORY, &rid,
     RF_ACTIVE);
 if (sc->sc_mem_res == ((void*)0)) {
  device_printf(dev, "Cannot map registers.\n");
  return (ENXIO);
 }


 rid = 0;
 sc->sc_irq_res = bus_alloc_resource_any(dev, SYS_RES_IRQ, &rid,
     RF_ACTIVE | RF_SHAREABLE);
 if (sc->sc_irq_res == ((void*)0)) {
  bus_release_resource(dev, SYS_RES_MEMORY, 0, sc->sc_mem_res);
  device_printf(dev, "Cannot allocate interrupt.\n");
  return (ENXIO);
 }

 TI_I2C_LOCK_INIT(sc);


 err = ti_i2c_activate(dev);
 if (err) {
  device_printf(dev, "ti_i2c_activate failed\n");
  goto out;
 }


 sc->sc_rev = ti_i2c_read_2(sc, I2C_REG_REVNB_HI) & 0xff;


 fifosz = ti_i2c_read_2(sc, I2C_REG_BUFSTAT);
 fifosz >>= I2C_BUFSTAT_FIFODEPTH_SHIFT;
 fifosz &= I2C_BUFSTAT_FIFODEPTH_MASK;

 device_printf(dev, "I2C revision %d.%d FIFO size: %d bytes\n",
     sc->sc_rev >> 4, sc->sc_rev & 0xf, 8 << fifosz);


 sc->sc_fifo_trsh = 5;


 sc->sc_timeout = 5*hz;

 ctx = device_get_sysctl_ctx(dev);
 tree = SYSCTL_CHILDREN(device_get_sysctl_tree(dev));
 SYSCTL_ADD_PROC(ctx, tree, OID_AUTO, "i2c_clock",
     CTLFLAG_RD | CTLTYPE_UINT | CTLFLAG_MPSAFE, sc, 0,
     ti_i2c_sysctl_clk, "IU", "I2C bus clock");

 SYSCTL_ADD_PROC(ctx, tree, OID_AUTO, "i2c_timeout",
     CTLFLAG_RW | CTLTYPE_UINT | CTLFLAG_MPSAFE, sc, 0,
     ti_i2c_sysctl_timeout, "IU", "I2C bus timeout (in ticks)");


 err = bus_setup_intr(dev, sc->sc_irq_res, INTR_TYPE_MISC | INTR_MPSAFE,
     ((void*)0), ti_i2c_intr, sc, &sc->sc_irq_h);
 if (err)
  goto out;


 if ((sc->sc_iicbus = device_add_child(dev, "iicbus", -1)) == ((void*)0)) {
  device_printf(dev, "could not allocate iicbus instance\n");
  err = ENXIO;
  goto out;
 }


 config_intrhook_oneshot((ich_func_t)bus_generic_attach, dev);

out:
 if (err) {
  ti_i2c_deactivate(dev);
  TI_I2C_LOCK_DESTROY(sc);
 }

 return (err);
}
