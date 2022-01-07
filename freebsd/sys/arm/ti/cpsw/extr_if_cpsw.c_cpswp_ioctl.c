
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef int u_long ;
struct ifreq {int ifr_reqcap; } ;
struct ifnet {int if_capenable; int if_flags; int if_drv_flags; struct cpswp_softc* if_softc; } ;
struct cpswp_softc {int if_flags; TYPE_1__* mii; int swsc; } ;
typedef scalar_t__ caddr_t ;
struct TYPE_2__ {int mii_media; } ;


 int CPSW_DEBUGF (int ,char*) ;
 int CPSW_PORT_LOCK (struct cpswp_softc*) ;
 int CPSW_PORT_UNLOCK (struct cpswp_softc*) ;
 int IFCAP_HWCSUM ;
 int IFF_ALLMULTI ;
 int IFF_DRV_RUNNING ;
 int IFF_PROMISC ;
 int IFF_UP ;






 int cpsw_set_allmulti (struct cpswp_softc*,int) ;
 int cpsw_set_promisc (struct cpswp_softc*,int) ;
 int cpswp_ale_update_addresses (struct cpswp_softc*,int) ;
 int cpswp_init_locked (struct cpswp_softc*) ;
 int cpswp_stop_locked (struct cpswp_softc*) ;
 int ether_ioctl (struct ifnet*,int,scalar_t__) ;
 int ifmedia_ioctl (struct ifnet*,struct ifreq*,int *,int) ;

__attribute__((used)) static int
cpswp_ioctl(struct ifnet *ifp, u_long command, caddr_t data)
{
 struct cpswp_softc *sc;
 struct ifreq *ifr;
 int error;
 uint32_t changed;

 error = 0;
 sc = ifp->if_softc;
 ifr = (struct ifreq *)data;

 switch (command) {
 case 130:
  changed = ifp->if_capenable ^ ifr->ifr_reqcap;
  if (changed & IFCAP_HWCSUM) {
   if ((ifr->ifr_reqcap & changed) & IFCAP_HWCSUM)
    ifp->if_capenable |= IFCAP_HWCSUM;
   else
    ifp->if_capenable &= ~IFCAP_HWCSUM;
  }
  error = 0;
  break;
 case 129:
  CPSW_PORT_LOCK(sc);
  if (ifp->if_flags & IFF_UP) {
   if (ifp->if_drv_flags & IFF_DRV_RUNNING) {
    changed = ifp->if_flags ^ sc->if_flags;
    CPSW_DEBUGF(sc->swsc,
        ("SIOCSIFFLAGS: UP & RUNNING (changed=0x%x)",
        changed));
    if (changed & IFF_PROMISC)
     cpsw_set_promisc(sc,
         ifp->if_flags & IFF_PROMISC);
    if (changed & IFF_ALLMULTI)
     cpsw_set_allmulti(sc,
         ifp->if_flags & IFF_ALLMULTI);
   } else {
    CPSW_DEBUGF(sc->swsc,
        ("SIOCSIFFLAGS: starting up"));
    cpswp_init_locked(sc);
   }
  } else if (ifp->if_drv_flags & IFF_DRV_RUNNING) {
   CPSW_DEBUGF(sc->swsc, ("SIOCSIFFLAGS: shutting down"));
   cpswp_stop_locked(sc);
  }

  sc->if_flags = ifp->if_flags;
  CPSW_PORT_UNLOCK(sc);
  break;
 case 133:
  cpswp_ale_update_addresses(sc, 0);
  break;
 case 132:



  cpswp_ale_update_addresses(sc, 1);
  break;
 case 131:
 case 128:
  error = ifmedia_ioctl(ifp, ifr, &sc->mii->mii_media, command);
  break;
 default:
  error = ether_ioctl(ifp, command, data);
 }
 return (error);
}
