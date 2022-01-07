
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
struct pt_query_decoder {int last_time; } ;


 int pt_time_query_tsc (int *,int *,int *,int *) ;
 int pte_invalid ;

int pt_qry_time(struct pt_query_decoder *decoder, uint64_t *time,
  uint32_t *lost_mtc, uint32_t *lost_cyc)
{
 if (!decoder || !time)
  return -pte_invalid;

 return pt_time_query_tsc(time, lost_mtc, lost_cyc, &decoder->last_time);
}
