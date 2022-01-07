
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int uqc_group_deltas; int uqc_user_deltas; } ;
typedef TYPE_1__ userquota_cache_t ;
typedef int uint64_t ;
typedef int int64_t ;
typedef scalar_t__ boolean_t ;


 int DNODE_FLAG_USERUSED_ACCOUNTED ;
 int DNODE_MIN_SIZE ;
 int userquota_update_cache (int *,int,int) ;

__attribute__((used)) static void
do_userquota_update(userquota_cache_t *cache, uint64_t used, uint64_t flags,
    uint64_t user, uint64_t group, boolean_t subtract)
{
 if ((flags & DNODE_FLAG_USERUSED_ACCOUNTED)) {
  int64_t delta = DNODE_MIN_SIZE + used;
  if (subtract)
   delta = -delta;

  userquota_update_cache(&cache->uqc_user_deltas, user, delta);
  userquota_update_cache(&cache->uqc_group_deltas, group, delta);
 }
}
