
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct pt_block_decoder {int ip; int query; } ;


 int pt_blk_start (struct pt_block_decoder*,int) ;
 int pt_blk_sync_reset (struct pt_block_decoder*) ;
 int pt_qry_sync_set (int *,int *,int ) ;
 int pte_invalid ;

int pt_blk_sync_set(struct pt_block_decoder *decoder, uint64_t offset)
{
 int errcode, status;

 if (!decoder)
  return -pte_invalid;

 errcode = pt_blk_sync_reset(decoder);
 if (errcode < 0)
  return errcode;

 status = pt_qry_sync_set(&decoder->query, &decoder->ip, offset);

 return pt_blk_start(decoder, status);
}
