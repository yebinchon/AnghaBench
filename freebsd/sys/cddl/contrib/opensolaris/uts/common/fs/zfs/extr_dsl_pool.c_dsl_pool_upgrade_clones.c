
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int dp_root_dir_obj; int * dp_origin_snap; } ;
typedef TYPE_1__ dsl_pool_t ;
typedef int dmu_tx_t ;


 int ASSERT (int ) ;
 int DS_FIND_CHILDREN ;
 int DS_FIND_SERIALIZE ;
 int VERIFY0 (int ) ;
 int dmu_objset_find_dp (TYPE_1__*,int ,int ,int *,int) ;
 int dmu_tx_is_syncing (int *) ;
 int upgrade_clones_cb ;

void
dsl_pool_upgrade_clones(dsl_pool_t *dp, dmu_tx_t *tx)
{
 ASSERT(dmu_tx_is_syncing(tx));
 ASSERT(dp->dp_origin_snap != ((void*)0));

 VERIFY0(dmu_objset_find_dp(dp, dp->dp_root_dir_obj, upgrade_clones_cb,
     tx, DS_FIND_CHILDREN | DS_FIND_SERIALIZE));
}
