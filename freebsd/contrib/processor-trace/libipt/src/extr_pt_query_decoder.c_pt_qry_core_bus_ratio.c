
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct pt_query_decoder {int last_time; } ;


 int pt_time_query_cbr (int *,int *) ;
 int pte_invalid ;

int pt_qry_core_bus_ratio(struct pt_query_decoder *decoder, uint32_t *cbr)
{
 if (!decoder || !cbr)
  return -pte_invalid;

 return pt_time_query_cbr(cbr, &decoder->last_time);
}
