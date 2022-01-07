
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ zv_volsize; scalar_t__ zv_volmode; struct g_provider* zv_provider; int zv_minor; } ;
typedef TYPE_1__ zvol_state_t ;
typedef void* uint64_t ;
struct g_provider {scalar_t__ mediasize; } ;
typedef int dev_t ;


 scalar_t__ DDI_SUCCESS ;
 int VBLK ;
 int VCHR ;
 int VERIFY (int) ;
 scalar_t__ ZFS_VOLMODE_GEOM ;
 int ddi_driver_major (int ) ;
 scalar_t__ ddi_prop_update_int64 (int ,int ,char*,void*) ;
 int g_resize_provider (struct g_provider*,scalar_t__) ;
 int g_topology_lock () ;
 int g_topology_unlock () ;
 void* lbtodb (void*) ;
 int makedevice (int ,int ) ;
 int spec_size_invalidate (int ,int ) ;
 int zfs_dip ;

__attribute__((used)) static void
zvol_size_changed(zvol_state_t *zv, uint64_t volsize)
{
 zv->zv_volsize = volsize;
 if (zv->zv_volmode == ZFS_VOLMODE_GEOM) {
  struct g_provider *pp;

  pp = zv->zv_provider;
  if (pp == ((void*)0))
   return;
  g_topology_lock();






  if (pp->mediasize == 0)
   pp->mediasize = zv->zv_volsize;
  else
   g_resize_provider(pp, zv->zv_volsize);
  g_topology_unlock();
 }

}
