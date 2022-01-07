
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_query_decoder {int pos; } ;


 int pte_internal ;
 scalar_t__ ptps_pad ;

int pt_qry_decode_pad(struct pt_query_decoder *decoder)
{
 if (!decoder)
  return -pte_internal;

 decoder->pos += ptps_pad;

 return 0;
}
