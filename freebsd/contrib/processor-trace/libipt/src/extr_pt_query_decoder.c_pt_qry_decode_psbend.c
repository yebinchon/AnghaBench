
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_query_decoder {int pos; } ;


 int pt_qry_process_pending_psb_events (struct pt_query_decoder*) ;
 int pte_internal ;
 scalar_t__ ptps_psbend ;

int pt_qry_decode_psbend(struct pt_query_decoder *decoder)
{
 int status;

 if (!decoder)
  return -pte_internal;

 status = pt_qry_process_pending_psb_events(decoder);
 if (status < 0)
  return status;


 if (status)
  return 0;




 decoder->pos += ptps_psbend;
 return 0;
}
