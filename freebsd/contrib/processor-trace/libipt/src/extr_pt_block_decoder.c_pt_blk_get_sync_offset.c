
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct pt_block_decoder {int query; } ;


 int pt_qry_get_sync_offset (int *,int *) ;
 int pte_invalid ;

int pt_blk_get_sync_offset(const struct pt_block_decoder *decoder,
      uint64_t *offset)
{
 if (!decoder)
  return -pte_invalid;

 return pt_qry_get_sync_offset(&decoder->query, offset);
}
