
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long MIN (int ,int) ;
 int arc_max_bytes () ;
 int dbuf_cache_max_bytes ;
 int dbuf_cache_shift ;

__attribute__((used)) static inline unsigned long
dbuf_cache_target_bytes(void)
{
 return MIN(dbuf_cache_max_bytes,
     arc_max_bytes() >> dbuf_cache_shift);
}
