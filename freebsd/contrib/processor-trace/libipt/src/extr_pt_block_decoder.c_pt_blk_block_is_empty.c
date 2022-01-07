
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_block {int ninsn; } ;



__attribute__((used)) static inline int pt_blk_block_is_empty(const struct pt_block *block)
{
 if (!block)
  return 1;

 return !block->ninsn;
}
