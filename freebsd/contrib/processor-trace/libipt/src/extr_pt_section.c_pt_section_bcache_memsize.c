
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct pt_section {struct pt_block_cache* bcache; } ;
struct pt_block_cache {int nentries; } ;
struct pt_bcache_entry {int dummy; } ;


 int pte_internal ;

__attribute__((used)) static int pt_section_bcache_memsize(const struct pt_section *section,
         uint64_t *psize)
{
 struct pt_block_cache *bcache;

 if (!section || !psize)
  return -pte_internal;

 bcache = section->bcache;
 if (!bcache) {
  *psize = 0ull;
  return 0;
 }

 *psize = sizeof(*bcache) +
  (bcache->nentries * sizeof(struct pt_bcache_entry));

 return 0;
}
