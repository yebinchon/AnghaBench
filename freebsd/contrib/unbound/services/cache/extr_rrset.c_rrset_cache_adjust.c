
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rrset_cache {int table; } ;
struct config_file {int rrset_cache_slabs; int rrset_cache_size; } ;
struct alloc_cache {int dummy; } ;


 struct rrset_cache* rrset_cache_create (struct config_file*,struct alloc_cache*) ;
 int rrset_cache_delete (struct rrset_cache*) ;
 int slabhash_is_size (int *,int ,int ) ;

struct rrset_cache* rrset_cache_adjust(struct rrset_cache *r,
 struct config_file* cfg, struct alloc_cache* alloc)
{
 if(!r || !cfg || !slabhash_is_size(&r->table, cfg->rrset_cache_size,
  cfg->rrset_cache_slabs))
 {
  rrset_cache_delete(r);
  r = rrset_cache_create(cfg, alloc);
 }
 return r;
}
