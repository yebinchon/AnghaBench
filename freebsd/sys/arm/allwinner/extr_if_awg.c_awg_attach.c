
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct awg_softc {int ifp; int miibus; int ih; int * res; int link_task; int mtx; int stat_ch; int type; int dev; } ;
typedef int device_t ;
struct TYPE_2__ {int ocd_data; } ;


 int BMSR_DEFCAPMASK ;
 int CSUM_IP ;
 int CSUM_TCP ;
 int CSUM_UDP ;
 int ENXIO ;
 int ETHER_ADDR_LEN ;
 int IFCAP_HWCSUM ;
 int IFCAP_POLLING ;
 int IFCAP_VLAN_MTU ;
 int IFF_BROADCAST ;
 int IFF_MULTICAST ;
 int IFF_SIMPLEX ;
 int IFT_ETHER ;
 int INTR_MPSAFE ;
 int INTR_TYPE_NET ;
 int MIIF_DOPAUSE ;
 int MII_OFFSET_ANY ;
 int MII_PHY_ANY ;
 int MTX_DEF ;
 int MTX_NETWORK_LOCK ;
 int TASK_INIT (int *,int ,int ,struct awg_softc*) ;
 scalar_t__ TX_DESC_COUNT ;
 size_t _RES_IRQ ;
 int awg_get_eaddr (int ,int *) ;
 int awg_init ;
 int awg_intr ;
 int awg_ioctl ;
 int awg_link_task ;
 int awg_media_change ;
 int awg_media_status ;
 int awg_reset (int ) ;
 int awg_setup_dma (int ) ;
 int awg_setup_extres (int ) ;
 int awg_spec ;
 int awg_start ;
 scalar_t__ bus_alloc_resources (int ,int ,int *) ;
 int bus_setup_intr (int ,int ,int,int *,int ,struct awg_softc*,int *) ;
 int callout_init_mtx (int *,int *,int ) ;
 int compat_data ;
 int device_get_name (int ) ;
 int device_get_nameunit (int ) ;
 struct awg_softc* device_get_softc (int ) ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*) ;
 int ether_ifattach (int ,int *) ;
 int if_alloc (int ) ;
 int if_getcapabilities (int ) ;
 int if_initname (int ,int ,int ) ;
 int if_setcapabilities (int ,int) ;
 int if_setcapabilitiesbit (int ,int ,int ) ;
 int if_setcapenable (int ,int ) ;
 int if_setflags (int ,int) ;
 int if_sethwassist (int ,int) ;
 int if_setinitfn (int ,int ) ;
 int if_setioctlfn (int ,int ) ;
 int if_setsendqlen (int ,scalar_t__) ;
 int if_setsendqready (int ) ;
 int if_setsoftc (int ,struct awg_softc*) ;
 int if_setstartfn (int ,int ) ;
 int mii_attach (int ,int *,int ,int ,int ,int ,int ,int ,int ) ;
 int mtx_init (int *,int ,int ,int ) ;
 TYPE_1__* ofw_bus_search_compatible (int ,int ) ;

__attribute__((used)) static int
awg_attach(device_t dev)
{
 uint8_t eaddr[ETHER_ADDR_LEN];
 struct awg_softc *sc;
 int error;

 sc = device_get_softc(dev);
 sc->dev = dev;
 sc->type = ofw_bus_search_compatible(dev, compat_data)->ocd_data;

 if (bus_alloc_resources(dev, awg_spec, sc->res) != 0) {
  device_printf(dev, "cannot allocate resources for device\n");
  return (ENXIO);
 }

 mtx_init(&sc->mtx, device_get_nameunit(dev), MTX_NETWORK_LOCK, MTX_DEF);
 callout_init_mtx(&sc->stat_ch, &sc->mtx, 0);
 TASK_INIT(&sc->link_task, 0, awg_link_task, sc);


 error = awg_setup_extres(dev);
 if (error != 0)
  return (error);


 awg_get_eaddr(dev, eaddr);


 error = awg_reset(dev);
 if (error != 0)
  return (error);


 error = awg_setup_dma(dev);
 if (error != 0)
  return (error);


 error = bus_setup_intr(dev, sc->res[_RES_IRQ],
     INTR_TYPE_NET | INTR_MPSAFE, ((void*)0), awg_intr, sc, &sc->ih);
 if (error != 0) {
  device_printf(dev, "cannot setup interrupt handler\n");
  return (error);
 }


 sc->ifp = if_alloc(IFT_ETHER);
 if_setsoftc(sc->ifp, sc);
 if_initname(sc->ifp, device_get_name(dev), device_get_unit(dev));
 if_setflags(sc->ifp, IFF_BROADCAST | IFF_SIMPLEX | IFF_MULTICAST);
 if_setstartfn(sc->ifp, awg_start);
 if_setioctlfn(sc->ifp, awg_ioctl);
 if_setinitfn(sc->ifp, awg_init);
 if_setsendqlen(sc->ifp, TX_DESC_COUNT - 1);
 if_setsendqready(sc->ifp);
 if_sethwassist(sc->ifp, CSUM_IP | CSUM_UDP | CSUM_TCP);
 if_setcapabilities(sc->ifp, IFCAP_VLAN_MTU | IFCAP_HWCSUM);
 if_setcapenable(sc->ifp, if_getcapabilities(sc->ifp));





 error = mii_attach(dev, &sc->miibus, sc->ifp, awg_media_change,
     awg_media_status, BMSR_DEFCAPMASK, MII_PHY_ANY, MII_OFFSET_ANY,
     MIIF_DOPAUSE);
 if (error != 0) {
  device_printf(dev, "cannot attach PHY\n");
  return (error);
 }


 ether_ifattach(sc->ifp, eaddr);

 return (0);
}
