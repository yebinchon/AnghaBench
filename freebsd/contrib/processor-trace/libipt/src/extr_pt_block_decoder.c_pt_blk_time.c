
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
struct pt_block_decoder {int query; } ;


 int pt_qry_time (int *,int *,int *,int *) ;
 int pte_invalid ;

int pt_blk_time(struct pt_block_decoder *decoder, uint64_t *time,
  uint32_t *lost_mtc, uint32_t *lost_cyc)
{
 if (!decoder || !time)
  return -pte_invalid;

 return pt_qry_time(&decoder->query, time, lost_mtc, lost_cyc);
}
