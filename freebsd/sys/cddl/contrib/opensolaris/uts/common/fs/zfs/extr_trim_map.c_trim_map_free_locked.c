
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ io_offset; scalar_t__ io_size; } ;
typedef TYPE_1__ zio_t ;
typedef scalar_t__ uint64_t ;
struct TYPE_8__ {int tm_inflight_writes; int tm_lock; } ;
typedef TYPE_2__ trim_map_t ;


 int ASSERT (int ) ;
 int MUTEX_HELD (int *) ;
 TYPE_1__* avl_find (int *,TYPE_1__*,int *) ;
 int trim_map_segment_add (TYPE_2__*,scalar_t__,scalar_t__,scalar_t__) ;

__attribute__((used)) static void
trim_map_free_locked(trim_map_t *tm, uint64_t start, uint64_t end, uint64_t txg)
{
 zio_t zsearch, *zs;

 ASSERT(MUTEX_HELD(&tm->tm_lock));

 zsearch.io_offset = start;
 zsearch.io_size = end - start;

 zs = avl_find(&tm->tm_inflight_writes, &zsearch, ((void*)0));
 if (zs == ((void*)0)) {
  trim_map_segment_add(tm, start, end, txg);
  return;
 }
 if (start < zs->io_offset)
  trim_map_free_locked(tm, start, zs->io_offset, txg);
 if (zs->io_offset + zs->io_size < end)
  trim_map_free_locked(tm, zs->io_offset + zs->io_size, end, txg);
}
