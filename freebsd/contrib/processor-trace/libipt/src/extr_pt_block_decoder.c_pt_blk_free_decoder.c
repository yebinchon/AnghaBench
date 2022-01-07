
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_block_decoder {int dummy; } ;


 int free (struct pt_block_decoder*) ;
 int pt_blk_decoder_fini (struct pt_block_decoder*) ;

void pt_blk_free_decoder(struct pt_block_decoder *decoder)
{
 if (!decoder)
  return;

 pt_blk_decoder_fini(decoder);
 free(decoder);
}
