
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct mii_data {int mii_media; } ;
struct ifreq {int dummy; } ;
struct ifnet {int if_flags; int if_drv_flags; struct emac_softc* if_softc; } ;
struct emac_softc {int emac_if_flags; int emac_miibus; } ;
typedef scalar_t__ caddr_t ;


 int EMAC_LOCK (struct emac_softc*) ;
 int EMAC_UNLOCK (struct emac_softc*) ;
 int IFF_ALLMULTI ;
 int IFF_DRV_RUNNING ;
 int IFF_PROMISC ;
 int IFF_UP ;





 struct mii_data* device_get_softc (int ) ;
 int emac_init_locked (struct emac_softc*) ;
 int emac_set_rx_mode (struct emac_softc*) ;
 int emac_stop_locked (struct emac_softc*) ;
 int ether_ioctl (struct ifnet*,int,scalar_t__) ;
 int ifmedia_ioctl (struct ifnet*,struct ifreq*,int *,int) ;

__attribute__((used)) static int
emac_ioctl(struct ifnet *ifp, u_long command, caddr_t data)
{
 struct emac_softc *sc;
 struct mii_data *mii;
 struct ifreq *ifr;
 int error = 0;

 sc = ifp->if_softc;
 ifr = (struct ifreq *)data;

 switch (command) {
 case 129:
  EMAC_LOCK(sc);
  if (ifp->if_flags & IFF_UP) {
   if ((ifp->if_drv_flags & IFF_DRV_RUNNING) != 0) {
    if ((ifp->if_flags ^ sc->emac_if_flags) &
        (IFF_PROMISC | IFF_ALLMULTI))
     emac_set_rx_mode(sc);
   } else
    emac_init_locked(sc);
  } else {
   if ((ifp->if_drv_flags & IFF_DRV_RUNNING) != 0)
    emac_stop_locked(sc);
  }
  sc->emac_if_flags = ifp->if_flags;
  EMAC_UNLOCK(sc);
  break;
 case 132:
 case 131:
  EMAC_LOCK(sc);
  if (ifp->if_drv_flags & IFF_DRV_RUNNING) {
   emac_set_rx_mode(sc);
  }
  EMAC_UNLOCK(sc);
  break;
 case 130:
 case 128:
  mii = device_get_softc(sc->emac_miibus);
  error = ifmedia_ioctl(ifp, ifr, &mii->mii_media, command);
  break;
 default:
  error = ether_ioctl(ifp, command, data);
  break;
 }
 return (error);
}
