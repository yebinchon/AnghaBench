
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_3__ {int dp_spa; int dp_meta_objset; int dp_obsolete_bpobj; } ;
typedef TYPE_1__ dsl_pool_t ;
typedef int dmu_tx_t ;


 int ASSERT (int ) ;
 int DMU_POOL_DIRECTORY_OBJECT ;
 int DMU_POOL_OBSOLETE_BPOBJ ;
 int SPA_FEATURE_DEVICE_REMOVAL ;
 int SPA_FEATURE_OBSOLETE_COUNTS ;
 int SPA_OLD_MAXBLOCKSIZE ;
 int VERIFY0 (int ) ;
 int bpobj_alloc (int ,int ,int *) ;
 int bpobj_open (int *,int ,int ) ;
 int spa_feature_incr (int ,int ,int *) ;
 int spa_feature_is_active (int ,int ) ;
 int zap_add (int ,int ,int ,int,int,int *,int *) ;

void
dsl_pool_create_obsolete_bpobj(dsl_pool_t *dp, dmu_tx_t *tx)
{
 uint64_t obj;




 ASSERT(spa_feature_is_active(dp->dp_spa, SPA_FEATURE_DEVICE_REMOVAL));

 obj = bpobj_alloc(dp->dp_meta_objset, SPA_OLD_MAXBLOCKSIZE, tx);
 VERIFY0(bpobj_open(&dp->dp_obsolete_bpobj, dp->dp_meta_objset, obj));
 VERIFY0(zap_add(dp->dp_meta_objset, DMU_POOL_DIRECTORY_OBJECT,
     DMU_POOL_OBSOLETE_BPOBJ, sizeof (uint64_t), 1, &obj, tx));
 spa_feature_incr(dp->dp_spa, SPA_FEATURE_OBSOLETE_COUNTS, tx);
}
