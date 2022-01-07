
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct name_cache {size_t size; TYPE_1__* cache; } ;
struct TYPE_2__ {struct name_cache* name; } ;


 int free (struct name_cache*) ;

__attribute__((used)) static void
free_cache(struct name_cache *cache)
{
 size_t i;

 if (cache != ((void*)0)) {
  for (i = 0; i < cache->size; i++)
   free(cache->cache[i].name);
  free(cache);
 }
}
