
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ifq_maxlen; } ;
struct ifnet {int if_flags; int if_capabilities; int if_capenable; TYPE_1__ if_snd; int if_init; int if_start; int if_ioctl; struct fv_softc* if_softc; } ;
struct fv_softc {int* fv_eaddr; int fv_rid; int fv_intrhand; int * fv_irq; int fv_ifmedia; int fv_miibus; int fv_dev; int fv_miiproxy; struct ifnet* fv_ifp; int * fv_res; int fv_bhandle; int fv_btag; int fv_link_task; int fv_mtx; int fv_stat_callout; int fv_ofw; } ;
typedef int device_t ;


 int BMSR_DEFCAPMASK ;
 int BUSMODE_SWR ;
 int CSR_BUSMODE ;
 int CSR_WRITE_4 (struct fv_softc*,int ,int ) ;
 int DELAY (int) ;
 int ENOSPC ;
 int ENXIO ;
 int IFF_BROADCAST ;
 int IFF_MULTICAST ;
 int IFF_SIMPLEX ;
 int IFM_AUTO ;
 int IFM_ETHER ;
 int IFQ_SET_MAXLEN (TYPE_1__*,int ) ;
 int IFQ_SET_READY (TYPE_1__*) ;
 int IFT_ETHER ;
 int INTR_MPSAFE ;
 int INTR_TYPE_NET ;
 int MII_OFFSET_ANY ;
 int MII_PHY_ANY ;
 int MTX_DEF ;
 int MTX_NETWORK_LOCK ;
 int OF_getprop (int ,char*,void*,int) ;
 int RF_ACTIVE ;
 int RF_SHAREABLE ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int TASK_INIT (int *,int ,int ,struct fv_softc*) ;
 void* bus_alloc_resource_any (int ,int ,int*,int) ;
 int bus_setup_intr (int ,int *,int,int *,int ,struct fv_softc*,int *) ;
 int callout_init_mtx (int *,int *,int ) ;
 int device_get_name (int ) ;
 int device_get_nameunit (int ) ;
 struct fv_softc* device_get_softc (int ) ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*) ;
 int ether_ifattach (struct ifnet*,int*) ;
 int ether_ifdetach (struct ifnet*) ;
 int fv_detach (int ) ;
 scalar_t__ fv_dma_alloc (struct fv_softc*) ;
 int fv_ifmedia_sts ;
 int fv_ifmedia_upd ;
 int fv_init ;
 int fv_intr ;
 int fv_ioctl ;
 int fv_link_task ;
 int fv_start ;
 struct ifnet* if_alloc (int ) ;
 int if_initname (struct ifnet*,int ,int) ;
 int ifmedia_add (int *,int,int ,int *) ;
 int ifmedia_init (int *,int ,int ,int ) ;
 int ifmedia_set (int *,int) ;
 int ifqmaxlen ;
 int mii_attach (int ,int *,struct ifnet*,int ,int ,int ,int ,int ,int ) ;
 int mii_attach_proxy (int ) ;
 int mtx_init (int *,int ,int ,int ) ;
 int ofw_bus_get_node (int ) ;
 int rman_get_bushandle (int *) ;
 int rman_get_bustag (int *) ;

__attribute__((used)) static int
fv_attach(device_t dev)
{
 struct ifnet *ifp;
 struct fv_softc *sc;
 int error = 0, rid;
 int unit;
 int i;

 sc = device_get_softc(dev);
 unit = device_get_unit(dev);
 sc->fv_dev = dev;
 sc->fv_ofw = ofw_bus_get_node(dev);

 i = OF_getprop(sc->fv_ofw, "local-mac-address", (void *)&sc->fv_eaddr, 6);
 if (i != 6) {

  sc->fv_eaddr[0] = 0x00;
  sc->fv_eaddr[1] = 0x0C;
  sc->fv_eaddr[2] = 0x42;
  sc->fv_eaddr[3] = 0x09;
  sc->fv_eaddr[4] = 0x5E;
  sc->fv_eaddr[5] = 0x6B;
 }

 mtx_init(&sc->fv_mtx, device_get_nameunit(dev), MTX_NETWORK_LOCK,
     MTX_DEF);
 callout_init_mtx(&sc->fv_stat_callout, &sc->fv_mtx, 0);
 TASK_INIT(&sc->fv_link_task, 0, fv_link_task, sc);


 sc->fv_rid = 0;
 sc->fv_res = bus_alloc_resource_any(dev, SYS_RES_MEMORY, &sc->fv_rid,
     RF_ACTIVE | RF_SHAREABLE);

 if (sc->fv_res == ((void*)0)) {
  device_printf(dev, "couldn't map memory\n");
  error = ENXIO;
  goto fail;
 }

 sc->fv_btag = rman_get_bustag(sc->fv_res);
 sc->fv_bhandle = rman_get_bushandle(sc->fv_res);


 rid = 0;
 sc->fv_irq = bus_alloc_resource_any(dev, SYS_RES_IRQ, &rid,
     RF_SHAREABLE | RF_ACTIVE);

 if (sc->fv_irq == ((void*)0)) {
  device_printf(dev, "couldn't map interrupt\n");
  error = ENXIO;
  goto fail;
 }


 ifp = sc->fv_ifp = if_alloc(IFT_ETHER);

 if (ifp == ((void*)0)) {
  device_printf(dev, "couldn't allocate ifnet structure\n");
  error = ENOSPC;
  goto fail;
 }
 ifp->if_softc = sc;
 if_initname(ifp, device_get_name(dev), device_get_unit(dev));
 ifp->if_flags = IFF_BROADCAST | IFF_SIMPLEX | IFF_MULTICAST;
 ifp->if_ioctl = fv_ioctl;
 ifp->if_start = fv_start;
 ifp->if_init = fv_init;


 IFQ_SET_MAXLEN(&ifp->if_snd, ifqmaxlen);
 ifp->if_snd.ifq_maxlen = ifqmaxlen;
 IFQ_SET_READY(&ifp->if_snd);

 ifp->if_capenable = ifp->if_capabilities;

 if (fv_dma_alloc(sc) != 0) {
  error = ENXIO;
  goto fail;
 }
 CSR_WRITE_4(sc, CSR_BUSMODE, BUSMODE_SWR);
 DELAY(1000);
 ifmedia_init(&sc->fv_ifmedia, 0, fv_ifmedia_upd, fv_ifmedia_sts);

 ifmedia_add(&sc->fv_ifmedia, IFM_ETHER | IFM_AUTO, 0, ((void*)0));
 ifmedia_set(&sc->fv_ifmedia, IFM_ETHER | IFM_AUTO);



 ether_ifattach(ifp, sc->fv_eaddr);


 error = bus_setup_intr(dev, sc->fv_irq, INTR_TYPE_NET | INTR_MPSAFE,
     ((void*)0), fv_intr, sc, &sc->fv_intrhand);

 if (error) {
  device_printf(dev, "couldn't set up irq\n");
  ether_ifdetach(ifp);
  goto fail;
 }

fail:
 if (error)
  fv_detach(dev);

 return (error);
}
