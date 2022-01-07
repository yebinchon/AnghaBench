
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct key_cache {int slab; } ;


 size_t slabhash_get_mem (int ) ;

size_t
key_cache_get_mem(struct key_cache* kcache)
{
 return sizeof(*kcache) + slabhash_get_mem(kcache->slab);
}
