
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct key_cache {int slab; } ;


 int free (struct key_cache*) ;
 int slabhash_delete (int ) ;

void
key_cache_delete(struct key_cache* kcache)
{
 if(!kcache)
  return;
 slabhash_delete(kcache->slab);
 free(kcache);
}
