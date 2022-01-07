
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int zio_alloc_list_t ;
typedef unsigned long long uint64_t ;
struct TYPE_5__ {int mg_lock; int mg_allocations; int mg_no_free_space; int mg_failed_allocations; int mg_initialized; } ;
typedef TYPE_1__ metaslab_group_t ;
typedef int dva_t ;


 int ASSERT (int ) ;
 int B_TRUE ;
 unsigned long long SPA_GANGBLOCKSIZE ;
 int TRACE_GROUP_FAILURE ;
 unsigned long long metaslab_group_alloc_normal (TYPE_1__*,int *,unsigned long long,unsigned long long,unsigned long long,int *,int,int) ;
 int metaslab_trace_add (int *,TYPE_1__*,int *,unsigned long long,int,int ,int) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;

__attribute__((used)) static uint64_t
metaslab_group_alloc(metaslab_group_t *mg, zio_alloc_list_t *zal,
    uint64_t asize, uint64_t txg, uint64_t min_distance, dva_t *dva, int d,
    int allocator)
{
 uint64_t offset;
 ASSERT(mg->mg_initialized);

 offset = metaslab_group_alloc_normal(mg, zal, asize, txg,
     min_distance, dva, d, allocator);

 mutex_enter(&mg->mg_lock);
 if (offset == -1ULL) {
  mg->mg_failed_allocations++;
  metaslab_trace_add(zal, mg, ((void*)0), asize, d,
      TRACE_GROUP_FAILURE, allocator);
  if (asize == SPA_GANGBLOCKSIZE) {
   mg->mg_no_free_space = B_TRUE;
  }
 }
 mg->mg_allocations++;
 mutex_exit(&mg->mg_lock);
 return (offset);
}
