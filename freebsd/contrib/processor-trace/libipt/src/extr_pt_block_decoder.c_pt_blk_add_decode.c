
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct pt_block_cache {int dummy; } ;
struct pt_bcache_entry {int ninsn; int mode; int qualifier; } ;
typedef enum pt_exec_mode { ____Placeholder_pt_exec_mode } pt_exec_mode ;
typedef int bce ;


 int memset (struct pt_bcache_entry*,int ,int) ;
 int pt_bcache_add (struct pt_block_cache*,int ,struct pt_bcache_entry) ;
 int ptbq_decode ;

__attribute__((used)) static inline int pt_blk_add_decode(struct pt_block_cache *bcache,
        uint64_t ioff, enum pt_exec_mode mode)
{
 struct pt_bcache_entry bce;

 memset(&bce, 0, sizeof(bce));
 bce.ninsn = 1;
 bce.mode = mode;
 bce.qualifier = ptbq_decode;

 return pt_bcache_add(bcache, ioff, bce);
}
