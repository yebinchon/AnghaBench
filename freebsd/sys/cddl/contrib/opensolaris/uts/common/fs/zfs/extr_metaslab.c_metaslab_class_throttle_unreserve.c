
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zio_t ;
struct TYPE_3__ {int mc_lock; int * mc_alloc_slots; int mc_alloc_throttle_enabled; } ;
typedef TYPE_1__ metaslab_class_t ;


 int ASSERT (int ) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int zfs_refcount_remove (int *,int *) ;

void
metaslab_class_throttle_unreserve(metaslab_class_t *mc, int slots,
    int allocator, zio_t *zio)
{
 ASSERT(mc->mc_alloc_throttle_enabled);
 mutex_enter(&mc->mc_lock);
 for (int d = 0; d < slots; d++) {
  (void) zfs_refcount_remove(&mc->mc_alloc_slots[allocator],
      zio);
 }
 mutex_exit(&mc->mc_lock);
}
