
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mii_data {int mii_media_status; int mii_media_active; } ;
struct ifnet {int if_drv_flags; } ;
struct fv_softc {int fv_link_status; struct ifnet* fv_ifp; int fv_miibus; } ;


 int FV_LOCK (struct fv_softc*) ;
 int FV_UNLOCK (struct fv_softc*) ;
 int IFF_DRV_RUNNING ;
 int IFM_ACTIVE ;
 scalar_t__ IFM_NONE ;
 scalar_t__ IFM_SUBTYPE (int ) ;
 struct mii_data* device_get_softc (int ) ;

__attribute__((used)) static void
fv_link_task(void *arg, int pending)
{
}
