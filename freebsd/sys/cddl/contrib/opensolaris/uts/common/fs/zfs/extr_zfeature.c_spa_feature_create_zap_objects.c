
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int spa_meta_objset; void* spa_feat_desc_obj; void* spa_feat_for_write_obj; void* spa_feat_for_read_obj; int spa_sync_on; } ;
typedef TYPE_1__ spa_t ;
struct TYPE_8__ {scalar_t__ tx_txg; } ;
typedef TYPE_2__ dmu_tx_t ;


 int ASSERT (int) ;
 int DMU_OTN_ZAP_METADATA ;
 int DMU_POOL_DIRECTORY_OBJECT ;
 int DMU_POOL_FEATURES_FOR_READ ;
 int DMU_POOL_FEATURES_FOR_WRITE ;
 int DMU_POOL_FEATURE_DESCRIPTIONS ;
 scalar_t__ TXG_INITIAL ;
 scalar_t__ dsl_pool_sync_context (int ) ;
 int spa_get_dsl (TYPE_1__*) ;
 void* zap_create_link (int ,int ,int ,int ,TYPE_2__*) ;

void
spa_feature_create_zap_objects(spa_t *spa, dmu_tx_t *tx)
{




 ASSERT(dsl_pool_sync_context(spa_get_dsl(spa)) || (!spa->spa_sync_on &&
     tx->tx_txg == TXG_INITIAL));

 spa->spa_feat_for_read_obj = zap_create_link(spa->spa_meta_objset,
     DMU_OTN_ZAP_METADATA, DMU_POOL_DIRECTORY_OBJECT,
     DMU_POOL_FEATURES_FOR_READ, tx);
 spa->spa_feat_for_write_obj = zap_create_link(spa->spa_meta_objset,
     DMU_OTN_ZAP_METADATA, DMU_POOL_DIRECTORY_OBJECT,
     DMU_POOL_FEATURES_FOR_WRITE, tx);
 spa->spa_feat_desc_obj = zap_create_link(spa->spa_meta_objset,
     DMU_OTN_ZAP_METADATA, DMU_POOL_DIRECTORY_OBJECT,
     DMU_POOL_FEATURE_DESCRIPTIONS, tx);
}
