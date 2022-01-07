
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mii_data {int mii_media_status; int mii_media_active; } ;
struct ifnet {struct fv_softc* if_softc; } ;
struct ifmediareq {int ifm_status; int ifm_active; } ;
struct fv_softc {int fv_miibus; } ;


 int FV_LOCK (struct fv_softc*) ;
 int FV_UNLOCK (struct fv_softc*) ;
 int IFM_ACTIVE ;
 int IFM_AVALID ;
 struct mii_data* device_get_softc (int ) ;
 int mii_pollstat (struct mii_data*) ;

__attribute__((used)) static void
fv_ifmedia_sts(struct ifnet *ifp, struct ifmediareq *ifmr)
{
 ifmr->ifm_status = IFM_AVALID | IFM_ACTIVE;

}
