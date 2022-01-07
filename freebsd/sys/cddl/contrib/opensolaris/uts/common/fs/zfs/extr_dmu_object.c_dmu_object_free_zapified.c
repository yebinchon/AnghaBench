
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
typedef int objset_t ;
struct TYPE_4__ {scalar_t__ dn_type; } ;
typedef TYPE_1__ dnode_t ;
typedef int dmu_tx_t ;
typedef scalar_t__ dmu_object_type_t ;


 int ASSERT (int ) ;
 scalar_t__ DMU_OTN_ZAP_METADATA ;
 int FTAG ;
 int SPA_FEATURE_EXTENSIBLE_DATASET ;
 int VERIFY0 (int ) ;
 int dmu_object_free (int *,int ,int *) ;
 int dmu_objset_spa (int *) ;
 int dmu_tx_is_syncing (int *) ;
 int dnode_hold (int *,int ,int ,TYPE_1__**) ;
 int dnode_rele (TYPE_1__*,int ) ;
 int spa_feature_decr (int ,int ,int *) ;

void
dmu_object_free_zapified(objset_t *mos, uint64_t object, dmu_tx_t *tx)
{
 dnode_t *dn;
 dmu_object_type_t t;

 ASSERT(dmu_tx_is_syncing(tx));

 VERIFY0(dnode_hold(mos, object, FTAG, &dn));
 t = dn->dn_type;
 dnode_rele(dn, FTAG);

 if (t == DMU_OTN_ZAP_METADATA) {
  spa_feature_decr(dmu_objset_spa(mos),
      SPA_FEATURE_EXTENSIBLE_DATASET, tx);
 }
 VERIFY0(dmu_object_free(mos, object, tx));
}
