
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct mii_data {int mii_media; } ;
struct ifreq {int ifr_reqcap; } ;
struct ifnet {int if_flags; int if_drv_flags; int if_capenable; int if_capabilities; int if_hwassist; struct fv_softc* if_softc; } ;
struct fv_softc {int fv_if_flags; int fv_ifmedia; int fv_miibus; int fv_detach; } ;
typedef scalar_t__ caddr_t ;


 int CSR_OPMODE ;
 int CSR_READ_4 (struct fv_softc*,int ) ;
 int CSR_WRITE_4 (struct fv_softc*,int ,int) ;
 int FV_CSUM_FEATURES ;
 int FV_LOCK (struct fv_softc*) ;
 int FV_UNLOCK (struct fv_softc*) ;
 int IFCAP_HWCSUM ;
 int IFCAP_VLAN_HWTAGGING ;
 int IFF_ALLMULTI ;
 int IFF_DRV_RUNNING ;
 int IFF_PROMISC ;
 int IFF_UP ;
 int OPMODE_PM ;
 int OPMODE_PR ;






 int VLAN_CAPABILITIES (struct ifnet*) ;
 struct mii_data* device_get_softc (int ) ;
 int ether_ioctl (struct ifnet*,int,scalar_t__) ;
 int fv_init_locked (struct fv_softc*) ;
 int fv_set_filter (struct fv_softc*) ;
 int fv_stop (struct fv_softc*) ;
 int fv_vlan_setup (struct fv_softc*) ;
 int ifmedia_ioctl (struct ifnet*,struct ifreq*,int *,int) ;
 int mask ;

__attribute__((used)) static int
fv_ioctl(struct ifnet *ifp, u_long command, caddr_t data)
{
 struct fv_softc *sc = ifp->if_softc;
 struct ifreq *ifr = (struct ifreq *) data;



 int error;
 int csr;

 switch (command) {
 case 129:
  FV_LOCK(sc);
  if (ifp->if_flags & IFF_UP) {
   if (ifp->if_drv_flags & IFF_DRV_RUNNING) {
    if ((ifp->if_flags ^ sc->fv_if_flags) &
        IFF_PROMISC) {
     csr = CSR_READ_4(sc, CSR_OPMODE);
     CSR_WRITE_4(sc, CSR_OPMODE, csr |
         OPMODE_PM | OPMODE_PR);
    }
    if ((ifp->if_flags ^ sc->fv_if_flags) &
        IFF_ALLMULTI) {
     csr = CSR_READ_4(sc, CSR_OPMODE);
     CSR_WRITE_4(sc, CSR_OPMODE, csr |
         OPMODE_PM);
    }
   } else {
    if (sc->fv_detach == 0)
     fv_init_locked(sc);
   }
  } else {
   if (ifp->if_drv_flags & IFF_DRV_RUNNING)
    fv_stop(sc);
  }
  sc->fv_if_flags = ifp->if_flags;
  FV_UNLOCK(sc);
  error = 0;
  break;
 case 133:
 case 132:





  error = 0;
  break;
 case 131:
 case 128:




  error = ifmedia_ioctl(ifp, ifr, &sc->fv_ifmedia, command);

  break;
 case 130:
  error = 0;
  break;
 default:
  error = ether_ioctl(ifp, command, data);
  break;
 }

 return (error);
}
