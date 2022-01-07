
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int spa_log_state; } ;
typedef TYPE_1__ spa_t ;
struct TYPE_9__ {int dp_root_dir_obj; } ;
typedef TYPE_2__ dsl_pool_t ;
typedef int boolean_t ;


 int B_FALSE ;
 int DS_FIND_CHILDREN ;


 int dmu_objset_find_dp (TYPE_2__*,int ,int ,int *,int ) ;
 TYPE_2__* spa_get_dsl (TYPE_1__*) ;
 int spa_set_log_state (TYPE_1__*,int const) ;
 int zil_check_log_chain ;

__attribute__((used)) static boolean_t
spa_check_logs(spa_t *spa)
{
 boolean_t rv = B_FALSE;
 dsl_pool_t *dp = spa_get_dsl(spa);

 switch (spa->spa_log_state) {
 case 129:

 case 128:
  rv = (dmu_objset_find_dp(dp, dp->dp_root_dir_obj,
      zil_check_log_chain, ((void*)0), DS_FIND_CHILDREN) != 0);
  if (rv)
   spa_set_log_state(spa, 129);
  break;
 }
 return (rv);
}
