
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_query_decoder {scalar_t__ consume_packet; int evq; struct pt_event* event; } ;
struct pt_event {int dummy; } ;


 int evb_tip ;
 struct pt_event* pt_evq_dequeue (int *,int ) ;
 scalar_t__ pt_evq_pending (int *,int ) ;
 int pt_qry_consume_tip (struct pt_query_decoder*,int) ;
 int pt_qry_decode_ip (struct pt_query_decoder*) ;
 int pt_qry_event_tip (struct pt_event*,struct pt_query_decoder*) ;
 int pte_internal ;

int pt_qry_decode_tip(struct pt_query_decoder *decoder)
{
 struct pt_event *ev;
 int size, errcode;

 if (!decoder)
  return -pte_internal;

 size = pt_qry_decode_ip(decoder);
 if (size < 0)
  return size;


 ev = pt_evq_dequeue(&decoder->evq, evb_tip);
 if (ev) {
  errcode = pt_qry_event_tip(ev, decoder);
  if (errcode < 0)
   return errcode;


  decoder->event = ev;


  if (pt_evq_pending(&decoder->evq, evb_tip))
   return 0;





  if (!decoder->consume_packet)
   return 0;




  decoder->consume_packet = 0;
 }

 return pt_qry_consume_tip(decoder, size);
}
