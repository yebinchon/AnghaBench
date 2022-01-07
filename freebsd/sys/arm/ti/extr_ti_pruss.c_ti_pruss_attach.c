
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct ti_pruss_softc {int sc_glob_irqen; TYPE_6__* sc_pdev; TYPE_4__* sc_irq_devs; int * sc_intr; int * sc_irq_res; int * sc_mem_res; int sc_bh; int sc_bt; int sc_mtx; } ;
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
typedef int name ;
typedef int device_t ;
struct TYPE_13__ {int si_drv1; } ;
struct TYPE_12__ {int irq; struct ti_pruss_softc* sc; } ;
struct TYPE_10__ {int si_note; } ;
struct TYPE_8__ {scalar_t__ idx; } ;
struct TYPE_9__ {TYPE_1__ ctl; } ;
struct TYPE_11__ {int event; int channel; int sc_mtx; TYPE_3__ sc_selinfo; TYPE_2__ tstamps; } ;


 int CTLFLAG_RD ;
 int CTLFLAG_RW ;
 int CTLTYPE_STRING ;
 int CTLTYPE_U8 ;
 int EINVAL ;
 int ENXIO ;
 int GID_WHEEL ;
 int INTR_MPSAFE ;
 int INTR_TYPE_MISC ;
 int MTX_DEF ;
 int OID_AUTO ;
 int PRUSS_AM33XX_INTC ;
 scalar_t__ PRUSS_AM33XX_REV ;
 int PRUSS_CLK ;
 int PRUSS_INTC_SIPR0 ;
 int PRUSS_INTC_SIPR1 ;
 int PRUSS_INTC_SITR0 ;
 int PRUSS_INTC_SITR1 ;
 int RF_ACTIVE ;
 struct sysctl_oid* SYSCTL_ADD_NODE (struct sysctl_ctx_list*,int ,int ,char*,int ,int ,char*) ;
 int SYSCTL_ADD_PROC (struct sysctl_ctx_list*,int ,int ,char*,int,struct ti_pruss_softc*,int,int ,char*,char*) ;
 int SYSCTL_CHILDREN (struct sysctl_oid*) ;
 int SYS_RES_MEMORY ;
 int TI_PRUSS_HOST_IRQS ;
 int TI_PRUSS_IRQS ;
 int UID_ROOT ;
 int * bus_alloc_resource_any (int ,int ,int*,int ) ;
 scalar_t__ bus_alloc_resources (int ,int ,int *) ;
 scalar_t__ bus_setup_intr (int ,int ,int,int *,int ,TYPE_5__*,int *) ;
 struct ti_pruss_softc* device_get_softc (int ) ;
 struct sysctl_ctx_list* device_get_sysctl_ctx (int ) ;
 struct sysctl_oid* device_get_sysctl_tree (int ) ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*) ;
 int knlist_init_mtx (int *,int *) ;
 TYPE_6__* make_dev (int *,int ,int ,int ,int,char*,int ) ;
 int mtx_init (int *,char*,int *,int ) ;
 int rman_get_bushandle (int *) ;
 int rman_get_bustag (int *) ;
 int snprintf (char*,int,char*,int) ;
 scalar_t__ ti_prcm_clk_enable (int ) ;
 int ti_pruss_cdevsw ;
 int ti_pruss_channel_map ;
 int ti_pruss_detach (int ) ;
 int ti_pruss_event_map ;
 int ti_pruss_global_interrupt_enable ;
 int ti_pruss_interrupt_enable ;
 int ti_pruss_interrupts_clear (struct ti_pruss_softc*) ;
 int ti_pruss_intr ;
 TYPE_5__* ti_pruss_irq_args ;
 int ti_pruss_irq_spec ;
 scalar_t__ ti_pruss_reg_read (struct ti_pruss_softc*,int ) ;
 int ti_pruss_reg_write (struct ti_pruss_softc*,int ,int) ;

__attribute__((used)) static int
ti_pruss_attach(device_t dev)
{
 struct ti_pruss_softc *sc;
 int rid, i;

 if (ti_prcm_clk_enable(PRUSS_CLK) != 0) {
  device_printf(dev, "could not enable PRUSS clock\n");
  return (ENXIO);
 }
 sc = device_get_softc(dev);
 rid = 0;
 mtx_init(&sc->sc_mtx, "TI PRUSS", ((void*)0), MTX_DEF);
 sc->sc_mem_res = bus_alloc_resource_any(dev, SYS_RES_MEMORY, &rid,
     RF_ACTIVE);
 if (sc->sc_mem_res == ((void*)0)) {
  device_printf(dev, "could not allocate memory resource\n");
  return (ENXIO);
 }

 struct sysctl_ctx_list *clist = device_get_sysctl_ctx(dev);
 if (!clist)
  return (EINVAL);

 struct sysctl_oid *poid;
 poid = device_get_sysctl_tree( dev );
 if (!poid)
  return (EINVAL);

 sc->sc_glob_irqen = 0;
 struct sysctl_oid *irq_root = SYSCTL_ADD_NODE(clist, SYSCTL_CHILDREN(poid),
     OID_AUTO, "irq", CTLFLAG_RD, 0,
     "PRUSS Host Interrupts");
 SYSCTL_ADD_PROC(clist, SYSCTL_CHILDREN(poid), OID_AUTO,
     "global_interrupt_enable", CTLFLAG_RW | CTLTYPE_U8,
     sc, 0, ti_pruss_global_interrupt_enable,
     "CU", "Global interrupt enable");

 sc->sc_bt = rman_get_bustag(sc->sc_mem_res);
 sc->sc_bh = rman_get_bushandle(sc->sc_mem_res);
 if (bus_alloc_resources(dev, ti_pruss_irq_spec, sc->sc_irq_res) != 0) {
  device_printf(dev, "could not allocate interrupt resource\n");
  ti_pruss_detach(dev);
  return (ENXIO);
 }

 ti_pruss_interrupts_clear(sc);

 for (i = 0; i < TI_PRUSS_IRQS; i++) {
  char name[8];
  snprintf(name, sizeof(name), "%d", i);

  struct sysctl_oid *irq_nodes = SYSCTL_ADD_NODE(clist, SYSCTL_CHILDREN(irq_root),
      OID_AUTO, name, CTLFLAG_RD, 0,
      "PRUSS Interrupts");
  SYSCTL_ADD_PROC(clist, SYSCTL_CHILDREN(irq_nodes), OID_AUTO,
      "channel", CTLFLAG_RW | CTLTYPE_STRING, sc, i, ti_pruss_channel_map,
      "A", "Channel attached to this irq");
  SYSCTL_ADD_PROC(clist, SYSCTL_CHILDREN(irq_nodes), OID_AUTO,
      "event", CTLFLAG_RW | CTLTYPE_STRING, sc, i, ti_pruss_event_map,
      "A", "Event attached to this irq");
  SYSCTL_ADD_PROC(clist, SYSCTL_CHILDREN(irq_nodes), OID_AUTO,
      "enable", CTLFLAG_RW | CTLTYPE_U8, sc, i, ti_pruss_interrupt_enable,
      "CU", "Enable/Disable interrupt");

  sc->sc_irq_devs[i].event = -1;
  sc->sc_irq_devs[i].channel = -1;
  sc->sc_irq_devs[i].tstamps.ctl.idx = 0;

  if (i < TI_PRUSS_HOST_IRQS) {
   ti_pruss_irq_args[i].irq = i;
   ti_pruss_irq_args[i].sc = sc;
   if (bus_setup_intr(dev, sc->sc_irq_res[i],
       INTR_MPSAFE | INTR_TYPE_MISC,
       ((void*)0), ti_pruss_intr, &ti_pruss_irq_args[i],
       &sc->sc_intr[i]) != 0) {
    device_printf(dev,
        "unable to setup the interrupt handler\n");
    ti_pruss_detach(dev);

    return (ENXIO);
   }
   mtx_init(&sc->sc_irq_devs[i].sc_mtx, "TI PRUSS IRQ", ((void*)0), MTX_DEF);
   knlist_init_mtx(&sc->sc_irq_devs[i].sc_selinfo.si_note, &sc->sc_irq_devs[i].sc_mtx);
  }
 }

 if (ti_pruss_reg_read(sc, PRUSS_AM33XX_INTC) == PRUSS_AM33XX_REV)
  device_printf(dev, "AM33xx PRU-ICSS\n");

 sc->sc_pdev = make_dev(&ti_pruss_cdevsw, 0, UID_ROOT, GID_WHEEL,
     0600, "pruss%d", device_get_unit(dev));
 sc->sc_pdev->si_drv1 = dev;


 ti_pruss_reg_write(sc, PRUSS_INTC_SIPR0, 0xFFFFFFFF);
 ti_pruss_reg_write(sc, PRUSS_INTC_SIPR1, 0xFFFFFFFF);


 ti_pruss_reg_write(sc, PRUSS_INTC_SITR0, 0);
 ti_pruss_reg_write(sc, PRUSS_INTC_SITR1, 0);

 return (0);
}
