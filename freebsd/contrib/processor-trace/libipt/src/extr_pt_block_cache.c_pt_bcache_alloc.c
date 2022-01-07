
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef scalar_t__ uint32_t ;
struct pt_block_cache {scalar_t__ nentries; } ;
struct pt_bcache_entry {int dummy; } ;


 int SIZE_MAX ;
 int UINT32_MAX ;
 struct pt_block_cache* malloc (size_t) ;
 int memset (struct pt_block_cache*,int ,size_t) ;

struct pt_block_cache *pt_bcache_alloc(uint64_t nentries)
{
 struct pt_block_cache *bcache;
 uint64_t size;

 if (!nentries || (UINT32_MAX < nentries))
  return ((void*)0);

 size = sizeof(*bcache) + (nentries * sizeof(struct pt_bcache_entry));
 if (SIZE_MAX < size)
  return ((void*)0);

 bcache = malloc((size_t) size);
 if (!bcache)
  return ((void*)0);

 memset(bcache, 0, (size_t) size);
 bcache->nentries = (uint32_t) nentries;

 return bcache;
}
