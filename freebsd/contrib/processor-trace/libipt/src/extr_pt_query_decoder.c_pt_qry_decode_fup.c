
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct pt_query_decoder {int evq; int ip; scalar_t__ consume_packet; struct pt_event* event; } ;
struct TYPE_3__ {int from; } ;
struct TYPE_4__ {TYPE_1__ async_branch; } ;
struct pt_event {TYPE_2__ variant; int type; } ;


 int evb_fup ;
 int evb_tip ;
 struct pt_event* pt_evq_dequeue (int *,int ) ;
 struct pt_event* pt_evq_enqueue (int *,int ) ;
 scalar_t__ pt_evq_pending (int *,int ) ;
 int pt_last_ip_query (int *,int *) ;
 int pt_qry_consume_fup (struct pt_query_decoder*,int) ;
 int pt_qry_decode_ip (struct pt_query_decoder*) ;
 int pt_qry_event_fup (struct pt_event*,struct pt_query_decoder*) ;
 int pt_qry_event_time (struct pt_event*,struct pt_query_decoder*) ;
 int pte_internal ;
 int pte_nomem ;
 int ptev_async_branch ;

int pt_qry_decode_fup(struct pt_query_decoder *decoder)
{
 struct pt_event *ev;
 int size, errcode;

 if (!decoder)
  return -pte_internal;

 size = pt_qry_decode_ip(decoder);
 if (size < 0)
  return size;


 ev = pt_evq_dequeue(&decoder->evq, evb_fup);
 if (ev) {
  errcode = pt_qry_event_fup(ev, decoder);
  if (errcode < 0)
   return errcode;


  decoder->event = ev;


  if (pt_evq_pending(&decoder->evq, evb_fup))
   return 0;





  if (!decoder->consume_packet)
   return 0;




  decoder->consume_packet = 0;
 } else {




  uint64_t ip;

  errcode = pt_last_ip_query(&ip, &decoder->ip);
  if (errcode < 0)
   return errcode;

  ev = pt_evq_enqueue(&decoder->evq, evb_tip);
  if (!ev)
   return -pte_nomem;

  ev->type = ptev_async_branch;
  ev->variant.async_branch.from = ip;

  errcode = pt_qry_event_time(ev, decoder);
  if (errcode < 0)
   return errcode;
 }

 return pt_qry_consume_fup(decoder, size);
}
