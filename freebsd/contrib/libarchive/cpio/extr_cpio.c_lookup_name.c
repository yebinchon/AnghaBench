
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct name_cache {int size; TYPE_1__* cache; int hits; int probes; } ;
struct cpio {int dummy; } ;
typedef int id_t ;
typedef int asnum ;
struct TYPE_2__ {char const* name; int id; } ;


 int ENOMEM ;
 struct name_cache* calloc (int,int) ;
 int free (char const*) ;
 int lafe_errc (int,int ,char*) ;
 int name_cache_size ;
 int snprintf (char*,int,char*,unsigned int) ;
 char const* strdup (char const*) ;

__attribute__((used)) static const char *
lookup_name(struct cpio *cpio, struct name_cache **name_cache_variable,
    int (*lookup_fn)(struct cpio *, const char **, id_t), id_t id)
{
 char asnum[16];
 struct name_cache *cache;
 const char *name;
 int slot;


 if (*name_cache_variable == ((void*)0)) {
  *name_cache_variable = calloc(1, sizeof(struct name_cache));
  if (*name_cache_variable == ((void*)0))
   lafe_errc(1, ENOMEM, "No more memory");
  (*name_cache_variable)->size = name_cache_size;
 }

 cache = *name_cache_variable;
 cache->probes++;

 slot = id % cache->size;
 if (cache->cache[slot].name != ((void*)0)) {
  if (cache->cache[slot].id == id) {
   cache->hits++;
   return (cache->cache[slot].name);
  }
  free(cache->cache[slot].name);
  cache->cache[slot].name = ((void*)0);
 }

 if (lookup_fn(cpio, &name, id)) {

  snprintf(asnum, sizeof(asnum), "%u", (unsigned)id);
  name = asnum;
 }

 cache->cache[slot].name = strdup(name);
 if (cache->cache[slot].name != ((void*)0)) {
  cache->cache[slot].id = id;
  return (cache->cache[slot].name);
 }






 return (((void*)0));
}
