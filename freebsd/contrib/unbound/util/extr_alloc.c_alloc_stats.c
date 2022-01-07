
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct alloc_cache {scalar_t__ num_reg_blocks; scalar_t__ num_quar; scalar_t__ super; } ;


 int log_info (char*,char*,int,int) ;

void
alloc_stats(struct alloc_cache* alloc)
{
 log_info("%salloc: %d in cache, %d blocks.", alloc->super?"":"sup",
  (int)alloc->num_quar, (int)alloc->num_reg_blocks);
}
