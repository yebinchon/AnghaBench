
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zthr_t ;
typedef int spa_t ;
typedef int boolean_t ;


 int B_FALSE ;
 int B_TRUE ;
 int SPA_FEATURE_POOL_CHECKPOINT ;
 int spa_feature_is_active (int *,int ) ;
 scalar_t__ spa_has_checkpoint (int *) ;

boolean_t
spa_checkpoint_discard_thread_check(void *arg, zthr_t *zthr)
{
 spa_t *spa = arg;

 if (!spa_feature_is_active(spa, SPA_FEATURE_POOL_CHECKPOINT))
  return (B_FALSE);

 if (spa_has_checkpoint(spa))
  return (B_FALSE);

 return (B_TRUE);
}
