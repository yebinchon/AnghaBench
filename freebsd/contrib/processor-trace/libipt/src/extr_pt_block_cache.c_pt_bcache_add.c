
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef size_t uint32_t ;
struct pt_block_cache {scalar_t__ nentries; struct pt_bcache_entry* entry; } ;
struct pt_bcache_entry {int dummy; } ;


 int pte_internal ;

int pt_bcache_add(struct pt_block_cache *bcache, uint64_t index,
    struct pt_bcache_entry bce)
{
 if (!bcache)
  return -pte_internal;

 if (bcache->nentries <= index)
  return -pte_internal;





 bcache->entry[(uint32_t) index] = bce;

 return 0;
}
