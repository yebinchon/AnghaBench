
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_5__ {scalar_t__ mg_max_alloc_queue_depth; scalar_t__* mg_cur_max_alloc_queue_depth; TYPE_1__* mg_class; } ;
typedef TYPE_2__ metaslab_group_t ;
struct TYPE_4__ {int * mc_alloc_max_slots; } ;


 scalar_t__ atomic_cas_64 (scalar_t__*,scalar_t__,scalar_t__) ;
 int atomic_inc_64 (int *) ;

__attribute__((used)) static void
metaslab_group_increment_qdepth(metaslab_group_t *mg, int allocator)
{
 uint64_t max = mg->mg_max_alloc_queue_depth;
 uint64_t cur = mg->mg_cur_max_alloc_queue_depth[allocator];
 while (cur < max) {
  if (atomic_cas_64(&mg->mg_cur_max_alloc_queue_depth[allocator],
      cur, cur + 1) == cur) {
   atomic_inc_64(
       &mg->mg_class->mc_alloc_max_slots[allocator]);
   return;
  }
  cur = mg->mg_cur_max_alloc_queue_depth[allocator];
 }
}
