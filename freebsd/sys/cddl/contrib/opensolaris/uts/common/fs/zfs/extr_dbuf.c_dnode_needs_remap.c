
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int spa_t ;
struct TYPE_5__ {TYPE_1__* dn_phys; int dn_objset; } ;
typedef TYPE_2__ dnode_t ;
typedef int boolean_t ;
typedef int blkptr_t ;
struct TYPE_4__ {scalar_t__ dn_nlevels; int dn_nblkptr; int * dn_blkptr; } ;


 int ASSERT (int ) ;
 int B_FALSE ;
 int B_TRUE ;
 int FTAG ;
 int RW_READER ;
 int SCL_VDEV ;
 int SPA_FEATURE_DEVICE_REMOVAL ;
 int * dmu_objset_spa (int ) ;
 int spa_config_enter (int *,int ,int ,int ) ;
 int spa_config_exit (int *,int ,int ) ;
 int spa_feature_is_active (int *,int ) ;
 scalar_t__ spa_remap_blkptr (int *,int *,int *,int *) ;

boolean_t
dnode_needs_remap(const dnode_t *dn)
{
 spa_t *spa = dmu_objset_spa(dn->dn_objset);
 boolean_t ret = B_FALSE;

 if (dn->dn_phys->dn_nlevels == 0) {
  return (B_FALSE);
 }

 ASSERT(spa_feature_is_active(spa, SPA_FEATURE_DEVICE_REMOVAL));

 spa_config_enter(spa, SCL_VDEV, FTAG, RW_READER);
 for (int j = 0; j < dn->dn_phys->dn_nblkptr; j++) {
  blkptr_t bp_copy = dn->dn_phys->dn_blkptr[j];
  if (spa_remap_blkptr(spa, &bp_copy, ((void*)0), ((void*)0))) {
   ret = B_TRUE;
   break;
  }
 }
 spa_config_exit(spa, SCL_VDEV, FTAG);

 return (ret);
}
