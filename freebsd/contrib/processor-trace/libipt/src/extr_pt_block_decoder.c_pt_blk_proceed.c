
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_block_decoder {int status; int enabled; } ;
struct pt_block {int dummy; } ;


 int pt_blk_fetch_event (struct pt_block_decoder*) ;
 int pt_blk_proceed_event (struct pt_block_decoder*,struct pt_block*) ;
 int pt_blk_proceed_no_event (struct pt_block_decoder*,struct pt_block*) ;
 int pt_blk_proceed_trailing_event (struct pt_block_decoder*,struct pt_block*) ;
 int pte_eos ;
 int pte_no_enable ;
 int pts_eos ;

__attribute__((used)) static int pt_blk_proceed(struct pt_block_decoder *decoder,
     struct pt_block *block)
{
 int status;

 status = pt_blk_fetch_event(decoder);
 if (status != 0) {
  if (status < 0)
   return status;

  return pt_blk_proceed_event(decoder, block);
 }




 if (!decoder->enabled) {
  if (decoder->status & pts_eos)
   return -pte_eos;

  return -pte_no_enable;
 }

 status = pt_blk_proceed_no_event(decoder, block);
 if (status < 0)
  return status;

 return pt_blk_proceed_trailing_event(decoder, block);
}
