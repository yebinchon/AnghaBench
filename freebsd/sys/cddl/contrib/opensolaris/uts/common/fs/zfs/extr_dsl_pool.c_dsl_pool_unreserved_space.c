
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int zfs_space_check_t ;
typedef scalar_t__ uint64_t ;
struct TYPE_4__ {int dp_spa; } ;
typedef TYPE_1__ dsl_pool_t ;


 scalar_t__ dsl_pool_adjustedsize (TYPE_1__*,int ) ;
 scalar_t__ metaslab_class_get_deferred (int ) ;
 int spa_normal_class (int ) ;

uint64_t
dsl_pool_unreserved_space(dsl_pool_t *dp, zfs_space_check_t slop_policy)
{
 uint64_t poolsize = dsl_pool_adjustedsize(dp, slop_policy);
 uint64_t deferred =
     metaslab_class_get_deferred(spa_normal_class(dp->dp_spa));
 uint64_t quota = (poolsize >= deferred) ? (poolsize - deferred) : 0;
 return (quota);
}
