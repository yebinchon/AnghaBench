
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rrset_cache {int table; } ;
struct config_file {size_t rrset_cache_slabs; size_t rrset_cache_size; } ;
struct alloc_cache {int dummy; } ;


 size_t HASH_DEFAULT_MAXMEM ;
 size_t HASH_DEFAULT_SLABS ;
 size_t HASH_DEFAULT_STARTARRAY ;
 int rrset_data_delete ;
 int rrset_markdel ;
 scalar_t__ slabhash_create (size_t,size_t,size_t,int ,int ,int ,int ,struct alloc_cache*) ;
 int slabhash_setmarkdel (int *,int *) ;
 int ub_rrset_compare ;
 int ub_rrset_key_delete ;
 int ub_rrset_sizefunc ;

struct rrset_cache* rrset_cache_create(struct config_file* cfg,
 struct alloc_cache* alloc)
{
 size_t slabs = (cfg?cfg->rrset_cache_slabs:HASH_DEFAULT_SLABS);
 size_t startarray = HASH_DEFAULT_STARTARRAY;
 size_t maxmem = (cfg?cfg->rrset_cache_size:HASH_DEFAULT_MAXMEM);

 struct rrset_cache *r = (struct rrset_cache*)slabhash_create(slabs,
  startarray, maxmem, ub_rrset_sizefunc, ub_rrset_compare,
  ub_rrset_key_delete, rrset_data_delete, alloc);
 slabhash_setmarkdel(&r->table, &rrset_markdel);
 return r;
}
