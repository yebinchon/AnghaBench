
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int size; } ;


 size_t DB_DBUF_CACHE ;
 int cv_signal (int *) ;
 scalar_t__ dbuf_cache_above_hiwater () ;
 scalar_t__ dbuf_cache_max_bytes ;
 TYPE_1__* dbuf_caches ;
 int dbuf_evict_cv ;
 int dbuf_evict_one () ;
 scalar_t__ zfs_refcount_count (int *) ;

__attribute__((used)) static void
dbuf_evict_notify(void)
{





 if (zfs_refcount_count(&dbuf_caches[DB_DBUF_CACHE].size) >
     dbuf_cache_max_bytes) {
  if (dbuf_cache_above_hiwater())
   dbuf_evict_one();
  cv_signal(&dbuf_evict_cv);
 }
}
