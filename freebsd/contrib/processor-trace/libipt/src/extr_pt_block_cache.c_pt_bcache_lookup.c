
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef size_t uint32_t ;
struct pt_block_cache {scalar_t__ nentries; struct pt_bcache_entry* entry; } ;
struct pt_bcache_entry {int dummy; } ;


 int pte_internal ;

int pt_bcache_lookup(struct pt_bcache_entry *bce,
       const struct pt_block_cache *bcache, uint64_t index)
{
 if (!bce || !bcache)
  return -pte_internal;

 if (bcache->nentries <= index)
  return -pte_internal;





 *bce = bcache->entry[(uint32_t) index];

 return 0;
}
