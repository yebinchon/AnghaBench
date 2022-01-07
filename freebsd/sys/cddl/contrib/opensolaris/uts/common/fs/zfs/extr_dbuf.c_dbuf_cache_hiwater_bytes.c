
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int dbuf_cache_hiwater_pct ;
 int dbuf_cache_target_bytes () ;

__attribute__((used)) static inline uint64_t
dbuf_cache_hiwater_bytes(void)
{
 uint64_t dbuf_cache_target = dbuf_cache_target_bytes();
 return (dbuf_cache_target +
     (dbuf_cache_target * dbuf_cache_hiwater_pct) / 100);
}
