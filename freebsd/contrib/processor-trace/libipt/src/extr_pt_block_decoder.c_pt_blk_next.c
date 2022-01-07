
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_block_decoder {scalar_t__ speculative; int mode; int ip; } ;
struct pt_block {int speculative; int mode; int ip; } ;
typedef int block ;


 int block_to_user (struct pt_block*,size_t,struct pt_block*) ;
 int memset (struct pt_block*,int ,int) ;
 int pt_blk_proceed (struct pt_block_decoder*,struct pt_block*) ;
 int pte_invalid ;

int pt_blk_next(struct pt_block_decoder *decoder, struct pt_block *ublock,
  size_t size)
{
 struct pt_block block, *pblock;
 int errcode, status;

 if (!decoder || !ublock)
  return -pte_invalid;

 pblock = size == sizeof(block) ? ublock : &block;


 memset(pblock, 0, sizeof(*pblock));
 pblock->ip = decoder->ip;
 pblock->mode = decoder->mode;
 if (decoder->speculative)
  pblock->speculative = 1;


 status = pt_blk_proceed(decoder, pblock);

 errcode = block_to_user(ublock, size, pblock);
 if (errcode < 0)
  return errcode;

 return status;
}
