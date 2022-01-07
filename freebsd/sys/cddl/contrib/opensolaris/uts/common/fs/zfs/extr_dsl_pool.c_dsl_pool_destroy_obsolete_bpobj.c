
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int bpo_object; } ;
struct TYPE_4__ {TYPE_3__ dp_obsolete_bpobj; int dp_meta_objset; int dp_spa; } ;
typedef TYPE_1__ dsl_pool_t ;
typedef int dmu_tx_t ;


 int DMU_POOL_DIRECTORY_OBJECT ;
 int DMU_POOL_OBSOLETE_BPOBJ ;
 int SPA_FEATURE_OBSOLETE_COUNTS ;
 int VERIFY0 (int ) ;
 int bpobj_close (TYPE_3__*) ;
 int bpobj_free (int ,int ,int *) ;
 int spa_feature_decr (int ,int ,int *) ;
 int zap_remove (int ,int ,int ,int *) ;

void
dsl_pool_destroy_obsolete_bpobj(dsl_pool_t *dp, dmu_tx_t *tx)
{
 spa_feature_decr(dp->dp_spa, SPA_FEATURE_OBSOLETE_COUNTS, tx);
 VERIFY0(zap_remove(dp->dp_meta_objset,
     DMU_POOL_DIRECTORY_OBJECT,
     DMU_POOL_OBSOLETE_BPOBJ, tx));
 bpobj_free(dp->dp_meta_objset,
     dp->dp_obsolete_bpobj.bpo_object, tx);
 bpobj_close(&dp->dp_obsolete_bpobj);
}
