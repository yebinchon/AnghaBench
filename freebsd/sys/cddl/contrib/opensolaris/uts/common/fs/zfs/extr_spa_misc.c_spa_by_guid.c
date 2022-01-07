
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_7__ {scalar_t__ spa_state; int * spa_pending_vdev; int * spa_root_vdev; } ;
typedef TYPE_1__ spa_t ;
typedef int avl_tree_t ;


 int ASSERT (int ) ;
 TYPE_1__* AVL_NEXT (int *,TYPE_1__*) ;
 int MUTEX_HELD (int *) ;
 scalar_t__ POOL_STATE_UNINITIALIZED ;
 TYPE_1__* avl_first (int *) ;
 scalar_t__ spa_guid (TYPE_1__*) ;
 int spa_namespace_avl ;
 int spa_namespace_lock ;
 int * vdev_lookup_by_guid (int *,scalar_t__) ;

spa_t *
spa_by_guid(uint64_t pool_guid, uint64_t device_guid)
{
 spa_t *spa;
 avl_tree_t *t = &spa_namespace_avl;

 ASSERT(MUTEX_HELD(&spa_namespace_lock));

 for (spa = avl_first(t); spa != ((void*)0); spa = AVL_NEXT(t, spa)) {
  if (spa->spa_state == POOL_STATE_UNINITIALIZED)
   continue;
  if (spa->spa_root_vdev == ((void*)0))
   continue;
  if (spa_guid(spa) == pool_guid) {
   if (device_guid == 0)
    break;

   if (vdev_lookup_by_guid(spa->spa_root_vdev,
       device_guid) != ((void*)0))
    break;




   if (spa->spa_pending_vdev) {
    if (vdev_lookup_by_guid(spa->spa_pending_vdev,
        device_guid) != ((void*)0))
     break;
   }
  }
 }

 return (spa);
}
