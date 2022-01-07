
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct pt_query_decoder {int pos; struct pt_event* event; int evq; int config; } ;
struct pt_packet_vmcs {int base; } ;
struct TYPE_5__ {int base; } ;
struct TYPE_4__ {int base; } ;
struct TYPE_6__ {TYPE_2__ vmcs; TYPE_1__ async_vmcs; } ;
struct pt_event {TYPE_3__ variant; void* type; } ;


 int evb_tip ;
 struct pt_event* pt_evq_enqueue (int *,int ) ;
 struct pt_event* pt_evq_find (int *,int ,int ) ;
 struct pt_event* pt_evq_standalone (int *) ;
 int pt_pkt_read_vmcs (struct pt_packet_vmcs*,int,int *) ;
 int pt_qry_event_time (struct pt_event*,struct pt_query_decoder*) ;
 int pte_internal ;
 int pte_nomem ;
 int ptev_async_branch ;
 int ptev_async_paging ;
 void* ptev_async_vmcs ;
 void* ptev_vmcs ;

int pt_qry_decode_vmcs(struct pt_query_decoder *decoder)
{
 struct pt_packet_vmcs packet;
 struct pt_event *event;
 int size, errcode;

 if (!decoder)
  return -pte_internal;

 size = pt_pkt_read_vmcs(&packet, decoder->pos, &decoder->config);
 if (size < 0)
  return size;






 event = pt_evq_find(&decoder->evq, evb_tip, ptev_async_paging);
 if (event) {
  struct pt_event *paging;

  paging = pt_evq_enqueue(&decoder->evq, evb_tip);
  if (!paging)
   return -pte_nomem;

  *paging = *event;

  event->type = ptev_async_vmcs;
  event->variant.async_vmcs.base = packet.base;

  decoder->pos += size;
  return 0;
 }




 event = pt_evq_find(&decoder->evq, evb_tip, ptev_async_branch);
 if (event) {
  event = pt_evq_enqueue(&decoder->evq, evb_tip);
  if (!event)
   return -pte_nomem;

  event->type = ptev_async_vmcs;
  event->variant.async_vmcs.base = packet.base;

  decoder->pos += size;
  return 0;
 }




 event = pt_evq_standalone(&decoder->evq);
 if (!event)
  return -pte_internal;

 event->type = ptev_vmcs;
 event->variant.vmcs.base = packet.base;

 decoder->event = event;

 errcode = pt_qry_event_time(event, decoder);
 if (errcode < 0)
  return errcode;

 decoder->pos += size;
 return 0;
}
