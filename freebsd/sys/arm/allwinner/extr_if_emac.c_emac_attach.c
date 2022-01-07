
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ifnet {int if_flags; int if_hdrlen; int if_capabilities; int if_capenable; int if_snd; int if_init; int if_ioctl; int if_start; struct emac_softc* if_softc; } ;
struct ether_vlan_header {int dummy; } ;
struct emac_softc {scalar_t__ emac_rx_process_limit; int emac_intrhand; int * emac_irq; int emac_miibus; struct ifnet* emac_ifp; int * emac_res; int emac_handle; int emac_tag; int emac_mtx; int emac_tick_ch; int emac_dev; } ;
typedef int device_t ;


 int BMSR_DEFCAPMASK ;
 int CTLFLAG_RW ;
 int CTLTYPE_INT ;
 void* EMAC_PROC_DEFAULT ;
 scalar_t__ EMAC_PROC_MAX ;
 scalar_t__ EMAC_PROC_MIN ;
 int ENOSPC ;
 int ENXIO ;
 int ETHER_ADDR_LEN ;
 int IFCAP_VLAN_MTU ;
 int IFF_BROADCAST ;
 int IFF_MULTICAST ;
 int IFF_SIMPLEX ;
 int IFQ_MAXLEN ;
 int IFQ_SET_MAXLEN (int *,int ) ;
 int IFT_ETHER ;
 int INTR_MPSAFE ;
 int INTR_TYPE_NET ;
 int MII_OFFSET_ANY ;
 int MII_PHY_ANY ;
 int MTX_DEF ;
 int MTX_NETWORK_LOCK ;
 int OID_AUTO ;
 int RF_ACTIVE ;
 int RF_SHAREABLE ;
 int SYSCTL_ADD_PROC (int ,int ,int ,char*,int,scalar_t__*,int ,int ,char*,char*) ;
 int SYSCTL_CHILDREN (int ) ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 void* bus_alloc_resource_any (int ,int ,int*,int) ;
 int bus_setup_intr (int ,int *,int,int *,int ,struct emac_softc*,int *) ;
 int callout_init_mtx (int *,int *,int ) ;
 int device_get_name (int ) ;
 int device_get_nameunit (int ) ;
 struct emac_softc* device_get_softc (int ) ;
 int device_get_sysctl_ctx (int ) ;
 int device_get_sysctl_tree (int ) ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*,...) ;
 int emac_detach (int ) ;
 int emac_get_hwaddr (struct emac_softc*,int *) ;
 int emac_ifmedia_sts ;
 int emac_ifmedia_upd ;
 int emac_init ;
 int emac_intr ;
 int emac_ioctl ;
 int emac_reset (struct emac_softc*) ;
 int emac_start ;
 int emac_sys_setup (struct emac_softc*) ;
 int ether_ifattach (struct ifnet*,int *) ;
 int ether_ifdetach (struct ifnet*) ;
 struct ifnet* if_alloc (int ) ;
 int if_initname (struct ifnet*,int ,int ) ;
 int mii_attach (int ,int *,struct ifnet*,int ,int ,int ,int ,int ,int ) ;
 int mtx_init (int *,int ,int ,int ) ;
 int resource_int_value (int ,int ,char*,scalar_t__*) ;
 int rman_get_bushandle (int *) ;
 int rman_get_bustag (int *) ;
 int sysctl_hw_emac_proc_limit ;

__attribute__((used)) static int
emac_attach(device_t dev)
{
 struct emac_softc *sc;
 struct ifnet *ifp;
 int error, rid;
 uint8_t eaddr[ETHER_ADDR_LEN];

 sc = device_get_softc(dev);
 sc->emac_dev = dev;

 error = 0;
 mtx_init(&sc->emac_mtx, device_get_nameunit(dev), MTX_NETWORK_LOCK,
     MTX_DEF);
 callout_init_mtx(&sc->emac_tick_ch, &sc->emac_mtx, 0);

 rid = 0;
 sc->emac_res = bus_alloc_resource_any(dev, SYS_RES_MEMORY, &rid,
     RF_ACTIVE);
 if (sc->emac_res == ((void*)0)) {
  device_printf(dev, "unable to map memory\n");
  error = ENXIO;
  goto fail;
 }

 sc->emac_tag = rman_get_bustag(sc->emac_res);
 sc->emac_handle = rman_get_bushandle(sc->emac_res);

 rid = 0;
 sc->emac_irq = bus_alloc_resource_any(dev, SYS_RES_IRQ, &rid,
     RF_SHAREABLE | RF_ACTIVE);
 if (sc->emac_irq == ((void*)0)) {
  device_printf(dev, "cannot allocate IRQ resources.\n");
  error = ENXIO;
  goto fail;
 }

 SYSCTL_ADD_PROC(device_get_sysctl_ctx(dev),
     SYSCTL_CHILDREN(device_get_sysctl_tree(dev)),
     OID_AUTO, "process_limit", CTLTYPE_INT | CTLFLAG_RW,
     &sc->emac_rx_process_limit, 0, sysctl_hw_emac_proc_limit, "I",
     "max number of Rx events to process");

 sc->emac_rx_process_limit = EMAC_PROC_DEFAULT;
 error = resource_int_value(device_get_name(dev), device_get_unit(dev),
     "process_limit", &sc->emac_rx_process_limit);
 if (error == 0) {
  if (sc->emac_rx_process_limit < EMAC_PROC_MIN ||
      sc->emac_rx_process_limit > EMAC_PROC_MAX) {
   device_printf(dev, "process_limit value out of range; "
       "using default: %d\n", EMAC_PROC_DEFAULT);
   sc->emac_rx_process_limit = EMAC_PROC_DEFAULT;
  }
 }

 error = emac_sys_setup(sc);
 if (error != 0)
  goto fail;

 emac_reset(sc);

 ifp = sc->emac_ifp = if_alloc(IFT_ETHER);
 if (ifp == ((void*)0)) {
  device_printf(dev, "unable to allocate ifp\n");
  error = ENOSPC;
  goto fail;
 }
 ifp->if_softc = sc;


 error = mii_attach(dev, &sc->emac_miibus, ifp, emac_ifmedia_upd,
     emac_ifmedia_sts, BMSR_DEFCAPMASK, MII_PHY_ANY, MII_OFFSET_ANY, 0);
 if (error != 0) {
  device_printf(dev, "PHY probe failed\n");
  goto fail;
 }

 if_initname(ifp, device_get_name(dev), device_get_unit(dev));
 ifp->if_flags = IFF_BROADCAST | IFF_SIMPLEX | IFF_MULTICAST;
 ifp->if_start = emac_start;
 ifp->if_ioctl = emac_ioctl;
 ifp->if_init = emac_init;
 IFQ_SET_MAXLEN(&ifp->if_snd, IFQ_MAXLEN);


 emac_get_hwaddr(sc, eaddr);
 ether_ifattach(ifp, eaddr);


 ifp->if_capabilities |= IFCAP_VLAN_MTU;
 ifp->if_capenable = ifp->if_capabilities;

 ifp->if_hdrlen = sizeof(struct ether_vlan_header);

 error = bus_setup_intr(dev, sc->emac_irq, INTR_TYPE_NET | INTR_MPSAFE,
     ((void*)0), emac_intr, sc, &sc->emac_intrhand);
 if (error != 0) {
  device_printf(dev, "could not set up interrupt handler.\n");
  ether_ifdetach(ifp);
  goto fail;
 }

fail:
 if (error != 0)
  emac_detach(dev);
 return (error);
}
