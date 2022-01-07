
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct name_cache {int size; TYPE_1__* cache; int hits; int probes; } ;
typedef char* lookup_fn ;
typedef int id_t ;
struct TYPE_2__ {char const* name; int id; } ;


 char const* NO_NAME ;
 int free (void*) ;

__attribute__((used)) static const char *
lookup_name(struct name_cache *cache,
    const char * (*lookup_fn)(struct name_cache *, id_t), id_t id)
{
 const char *name;
 int slot;


 cache->probes++;

 slot = id % cache->size;
 if (cache->cache[slot].name != ((void*)0)) {
  if (cache->cache[slot].id == id) {
   cache->hits++;
   if (cache->cache[slot].name == NO_NAME)
    return (((void*)0));
   return (cache->cache[slot].name);
  }
  if (cache->cache[slot].name != NO_NAME)
   free((void *)(uintptr_t)cache->cache[slot].name);
  cache->cache[slot].name = ((void*)0);
 }

 name = (lookup_fn)(cache, id);
 if (name == ((void*)0)) {

  cache->cache[slot].name = NO_NAME;
  cache->cache[slot].id = id;
  return (((void*)0));
 }

 cache->cache[slot].name = name;
 cache->cache[slot].id = id;
 return (cache->cache[slot].name);
}
