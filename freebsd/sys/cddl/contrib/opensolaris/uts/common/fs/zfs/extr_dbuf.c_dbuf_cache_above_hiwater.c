
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int boolean_t ;
struct TYPE_2__ {int size; } ;


 size_t DB_DBUF_CACHE ;
 scalar_t__ dbuf_cache_hiwater_bytes () ;
 TYPE_1__* dbuf_caches ;
 scalar_t__ zfs_refcount_count (int *) ;

__attribute__((used)) static inline boolean_t
dbuf_cache_above_hiwater(void)
{
 return (zfs_refcount_count(&dbuf_caches[DB_DBUF_CACHE].size) >
     dbuf_cache_hiwater_bytes());
}
