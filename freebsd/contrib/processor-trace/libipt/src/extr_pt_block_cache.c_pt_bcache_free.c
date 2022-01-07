
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_block_cache {int dummy; } ;


 int free (struct pt_block_cache*) ;

void pt_bcache_free(struct pt_block_cache *bcache)
{
 free(bcache);
}
