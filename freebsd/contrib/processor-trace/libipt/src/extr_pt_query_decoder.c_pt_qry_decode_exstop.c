
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pt_query_decoder {int pos; struct pt_event* event; int evq; int config; } ;
struct pt_packet_exstop {scalar_t__ ip; } ;
struct TYPE_3__ {unsigned long long ip; } ;
struct TYPE_4__ {TYPE_1__ exstop; } ;
struct pt_event {int ip_suppressed; TYPE_2__ variant; void* type; } ;


 int evb_fup ;
 struct pt_event* pt_evq_enqueue (int *,int ) ;
 struct pt_event* pt_evq_standalone (int *) ;
 int pt_pkt_read_exstop (struct pt_packet_exstop*,int,int *) ;
 int pte_internal ;
 void* ptev_exstop ;

int pt_qry_decode_exstop(struct pt_query_decoder *decoder)
{
 struct pt_packet_exstop packet;
 struct pt_event *event;
 int size;

 if (!decoder)
  return -pte_internal;

 size = pt_pkt_read_exstop(&packet, decoder->pos, &decoder->config);
 if (size < 0)
  return size;

 if (packet.ip) {
  event = pt_evq_enqueue(&decoder->evq, evb_fup);
  if (!event)
   return -pte_internal;

  event->type = ptev_exstop;
 } else {
  event = pt_evq_standalone(&decoder->evq);
  if (!event)
   return -pte_internal;

  event->type = ptev_exstop;

  event->ip_suppressed = 1;
  event->variant.exstop.ip = 0ull;

  decoder->event = event;
 }

 decoder->pos += size;
 return 0;
}
