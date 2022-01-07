
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int if_drv_flags; } ;
struct fv_softc {int fv_stat_callout; struct ifnet* fv_ifp; } ;


 int CSR_INTEN ;
 int CSR_OPMODE ;
 int CSR_RXLIST ;
 int CSR_TXLIST ;
 int CSR_WRITE_4 (struct fv_softc*,int ,int ) ;
 int FV_LOCK_ASSERT (struct fv_softc*) ;
 int IFF_DRV_OACTIVE ;
 int IFF_DRV_RUNNING ;
 int callout_stop (int *) ;

__attribute__((used)) static void
fv_stop(struct fv_softc *sc)
{
 struct ifnet *ifp;

 FV_LOCK_ASSERT(sc);

 ifp = sc->fv_ifp;
 ifp->if_drv_flags &= ~(IFF_DRV_RUNNING | IFF_DRV_OACTIVE);
 callout_stop(&sc->fv_stat_callout);


 CSR_WRITE_4(sc, CSR_INTEN, 0);


 CSR_WRITE_4(sc, CSR_OPMODE, 0);
 CSR_WRITE_4(sc, CSR_RXLIST, 0);
 CSR_WRITE_4(sc, CSR_TXLIST, 0);

}
