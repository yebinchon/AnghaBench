
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {struct fv_softc* if_softc; } ;
struct fv_softc {int dummy; } ;


 int FV_LOCK (struct fv_softc*) ;
 int FV_UNLOCK (struct fv_softc*) ;
 int fv_start_locked (struct ifnet*) ;

__attribute__((used)) static void
fv_start(struct ifnet *ifp)
{
 struct fv_softc *sc;

 sc = ifp->if_softc;

 FV_LOCK(sc);
 fv_start_locked(ifp);
 FV_UNLOCK(sc);
}
