
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pt_query_decoder {int consume_packet; int enabled; int evq; struct pt_event* event; int tnt; int ip; } ;
struct TYPE_3__ {int ip; } ;
struct TYPE_4__ {TYPE_1__ enabled; } ;
struct pt_event {TYPE_2__ variant; int type; } ;


 int evb_tip ;
 struct pt_event* pt_evq_dequeue (int *,int ) ;
 scalar_t__ pt_evq_pending (int *,int ) ;
 struct pt_event* pt_evq_standalone (int *) ;
 int pt_last_ip_query (int *,int *) ;
 int pt_qry_consume_tip_pge (struct pt_query_decoder*,int) ;
 int pt_qry_decode_ip (struct pt_query_decoder*) ;
 int pt_qry_event_time (struct pt_event*,struct pt_query_decoder*) ;
 int pt_qry_event_tip_pge (struct pt_event*,struct pt_query_decoder*) ;
 int pt_tnt_cache_init (int *) ;
 int pte_bad_packet ;
 int pte_internal ;
 int ptev_enabled ;

int pt_qry_decode_tip_pge(struct pt_query_decoder *decoder)
{
 struct pt_event *ev;
 int size, errcode;

 if (!decoder)
  return -pte_internal;

 size = pt_qry_decode_ip(decoder);
 if (size < 0)
  return size;







 if (!decoder->consume_packet) {

  ev = pt_evq_standalone(&decoder->evq);
  if (!ev)
   return -pte_internal;

  ev->type = ptev_enabled;


  errcode = pt_last_ip_query(&ev->variant.enabled.ip,
        &decoder->ip);
  if (errcode < 0)
   return -pte_bad_packet;

  errcode = pt_qry_event_time(ev, decoder);
  if (errcode < 0)
   return errcode;







  pt_tnt_cache_init(&decoder->tnt);


  decoder->consume_packet = 1;
  decoder->enabled = 1;
 } else {

  ev = pt_evq_dequeue(&decoder->evq, evb_tip);
  if (ev) {
   errcode = pt_qry_event_tip_pge(ev, decoder);
   if (errcode < 0)
    return errcode;
  }
 }




 if (!ev)
  return -pte_internal;


 decoder->event = ev;


 if (pt_evq_pending(&decoder->evq, evb_tip))
  return 0;


 if (!decoder->consume_packet)
  return -pte_internal;

 decoder->consume_packet = 0;

 return pt_qry_consume_tip_pge(decoder, size);
}
