
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct key_cache {int slab; } ;
struct config_file {size_t key_cache_slabs; size_t key_cache_size; } ;


 size_t HASH_DEFAULT_STARTARRAY ;
 scalar_t__ calloc (int,int) ;
 int free (struct key_cache*) ;
 int key_entry_compfunc ;
 int key_entry_deldatafunc ;
 int key_entry_delkeyfunc ;
 int key_entry_sizefunc ;
 int log_err (char*) ;
 int slabhash_create (size_t,size_t,size_t,int *,int *,int *,int *,int *) ;

struct key_cache*
key_cache_create(struct config_file* cfg)
{
 struct key_cache* kcache = (struct key_cache*)calloc(1,
  sizeof(*kcache));
 size_t numtables, start_size, maxmem;
 if(!kcache) {
  log_err("malloc failure");
  return ((void*)0);
 }
 numtables = cfg->key_cache_slabs;
 start_size = HASH_DEFAULT_STARTARRAY;
 maxmem = cfg->key_cache_size;
 kcache->slab = slabhash_create(numtables, start_size, maxmem,
  &key_entry_sizefunc, &key_entry_compfunc,
  &key_entry_delkeyfunc, &key_entry_deldatafunc, ((void*)0));
 if(!kcache->slab) {
  log_err("malloc failure");
  free(kcache);
  return ((void*)0);
 }
 return kcache;
}
