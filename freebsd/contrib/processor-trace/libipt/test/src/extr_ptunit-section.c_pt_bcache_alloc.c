
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef scalar_t__ uint32_t ;
struct pt_block_cache {scalar_t__ nentries; } ;


 scalar_t__ UINT32_MAX ;
 struct pt_block_cache* malloc (int) ;

struct pt_block_cache *pt_bcache_alloc(uint64_t nentries)
{
 struct pt_block_cache *bcache;

 if (!nentries || (UINT32_MAX < nentries))
  return ((void*)0);






 bcache = malloc(sizeof(*bcache));
 if (bcache)
  bcache->nentries = (uint32_t) nentries;

 return bcache;
}
