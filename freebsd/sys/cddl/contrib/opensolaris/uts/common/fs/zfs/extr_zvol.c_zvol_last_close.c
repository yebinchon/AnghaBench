
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int zv_flags; int * zv_objset; int * zv_dn; int * zv_zilog; } ;
typedef TYPE_1__ zvol_state_t ;


 int ZVOL_RDONLY ;
 int dmu_objset_disown (int *,int ) ;
 int dmu_objset_ds (int *) ;
 int dmu_objset_evict_dbufs (int *) ;
 int dmu_objset_pool (int *) ;
 int dnode_rele (int *,int ) ;
 scalar_t__ dsl_dataset_is_dirty (int ) ;
 int txg_wait_synced (int ,int ) ;
 int zil_close (int *) ;
 int zvol_tag ;

void
zvol_last_close(zvol_state_t *zv)
{
 zil_close(zv->zv_zilog);
 zv->zv_zilog = ((void*)0);

 dnode_rele(zv->zv_dn, zvol_tag);
 zv->zv_dn = ((void*)0);




 if (dsl_dataset_is_dirty(dmu_objset_ds(zv->zv_objset)) &&
     !(zv->zv_flags & ZVOL_RDONLY))
  txg_wait_synced(dmu_objset_pool(zv->zv_objset), 0);
 dmu_objset_evict_dbufs(zv->zv_objset);

 dmu_objset_disown(zv->zv_objset, zvol_tag);
 zv->zv_objset = ((void*)0);
}
