
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int dp_config_rwlock; } ;
typedef TYPE_1__ dsl_pool_t ;
struct TYPE_6__ {int dd_object; TYPE_1__* dd_pool; } ;
typedef TYPE_2__ dsl_dir_t ;


 int ASSERT (int ) ;
 int DS_FIND_CHILDREN ;
 int RRW_WRITE_HELD (int *) ;
 int dmu_objset_find_dp (TYPE_1__*,int ,int ,int *,int ) ;
 int dsl_prop_notify_all_cb ;

void
dsl_prop_notify_all(dsl_dir_t *dd)
{
 dsl_pool_t *dp = dd->dd_pool;
 ASSERT(RRW_WRITE_HELD(&dp->dp_config_rwlock));
 (void) dmu_objset_find_dp(dp, dd->dd_object, dsl_prop_notify_all_cb,
     ((void*)0), DS_FIND_CHILDREN);
}
