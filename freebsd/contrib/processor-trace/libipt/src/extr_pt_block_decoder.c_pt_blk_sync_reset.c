
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_block_decoder {int dummy; } ;


 int pt_blk_reset (struct pt_block_decoder*) ;
 int pte_internal ;

__attribute__((used)) static int pt_blk_sync_reset(struct pt_block_decoder *decoder)
{
 if (!decoder)
  return -pte_internal;

 pt_blk_reset(decoder);

 return 0;
}
