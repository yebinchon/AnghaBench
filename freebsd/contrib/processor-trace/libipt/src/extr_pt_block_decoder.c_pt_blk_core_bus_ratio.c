
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct pt_block_decoder {int query; } ;


 int pt_qry_core_bus_ratio (int *,int *) ;
 int pte_invalid ;

int pt_blk_core_bus_ratio(struct pt_block_decoder *decoder, uint32_t *cbr)
{
 if (!decoder || !cbr)
  return -pte_invalid;

 return pt_qry_core_bus_ratio(&decoder->query, cbr);
}
