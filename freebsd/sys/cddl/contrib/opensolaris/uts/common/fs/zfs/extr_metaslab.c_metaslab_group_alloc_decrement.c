
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint64_t ;
typedef int spa_t ;
struct TYPE_6__ {int * mg_alloc_queue_depth; TYPE_1__* mg_class; } ;
typedef TYPE_2__ metaslab_group_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_7__ {TYPE_2__* vdev_mg; } ;
struct TYPE_5__ {int mc_alloc_throttle_enabled; } ;


 int METASLAB_ASYNC_ALLOC ;
 int METASLAB_DONT_THROTTLE ;
 int metaslab_group_increment_qdepth (TYPE_2__*,int) ;
 TYPE_3__* vdev_lookup_top (int *,int ) ;
 int zfs_refcount_remove (int *,void*) ;

void
metaslab_group_alloc_decrement(spa_t *spa, uint64_t vdev, void *tag, int flags,
    int allocator, boolean_t io_complete)
{
 if (!(flags & METASLAB_ASYNC_ALLOC) ||
     (flags & METASLAB_DONT_THROTTLE))
  return;

 metaslab_group_t *mg = vdev_lookup_top(spa, vdev)->vdev_mg;
 if (!mg->mg_class->mc_alloc_throttle_enabled)
  return;

 (void) zfs_refcount_remove(&mg->mg_alloc_queue_depth[allocator], tag);
 if (io_complete)
  metaslab_group_increment_qdepth(mg, allocator);
}
