
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* vdev_spa; } ;
typedef TYPE_1__ vdev_t ;
typedef scalar_t__ uint64_t ;
struct TYPE_5__ {int spa_all_vdev_zaps; int spa_meta_objset; } ;
typedef TYPE_2__ spa_t ;
typedef int dmu_tx_t ;


 int ASSERT (int) ;
 int DMU_OTN_ZAP_METADATA ;
 int DMU_OT_NONE ;
 int VERIFY0 (int ) ;
 int zap_add_int (int ,int ,scalar_t__,int *) ;
 scalar_t__ zap_create (int ,int ,int ,int ,int *) ;

uint64_t
vdev_create_link_zap(vdev_t *vd, dmu_tx_t *tx)
{
 spa_t *spa = vd->vdev_spa;
 uint64_t zap = zap_create(spa->spa_meta_objset, DMU_OTN_ZAP_METADATA,
     DMU_OT_NONE, 0, tx);

 ASSERT(zap != 0);
 VERIFY0(zap_add_int(spa->spa_meta_objset, spa->spa_all_vdev_zaps,
     zap, tx));

 return (zap);
}
