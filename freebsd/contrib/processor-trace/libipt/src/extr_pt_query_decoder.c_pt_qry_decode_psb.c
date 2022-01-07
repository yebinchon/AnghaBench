
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const uint8_t ;
struct pt_query_decoder {int * next; int evq; int const* pos; int config; int tcal; } ;


 int evb_psbend ;
 int pt_decode_psb ;
 int pt_evq_clear (int *,int ) ;
 int pt_pkt_read_psb (int const*,int *) ;
 int pt_qry_read_psb_header (struct pt_query_decoder*) ;
 int pt_tcal_update_psb (int *,int *) ;
 int pte_internal ;

int pt_qry_decode_psb(struct pt_query_decoder *decoder)
{
 const uint8_t *pos;
 int size, errcode;

 if (!decoder)
  return -pte_internal;

 pos = decoder->pos;

 size = pt_pkt_read_psb(pos, &decoder->config);
 if (size < 0)
  return size;

 errcode = pt_tcal_update_psb(&decoder->tcal, &decoder->config);
 if (errcode < 0)
  return errcode;

 decoder->pos += size;

 errcode = pt_qry_read_psb_header(decoder);
 if (errcode < 0) {



  decoder->pos = pos;


  (void) pt_evq_clear(&decoder->evq, evb_psbend);


  decoder->next = &pt_decode_psb;

  return errcode;
 }






 return 0;
}
