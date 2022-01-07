
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct pt_query_decoder {int pos; struct pt_event* event; int evq; int config; } ;
struct pt_packet_ptw {int payload; scalar_t__ ip; int plc; } ;
struct TYPE_3__ {int payload; int size; } ;
struct TYPE_4__ {TYPE_1__ ptwrite; } ;
struct pt_event {int ip_suppressed; TYPE_2__ variant; int type; } ;


 int evb_fup ;
 struct pt_event* pt_evq_enqueue (int *,int ) ;
 struct pt_event* pt_evq_standalone (int *) ;
 int pt_pkt_read_ptw (struct pt_packet_ptw*,int,int *) ;
 int pt_ptw_size (int ) ;
 int pte_internal ;
 int ptev_ptwrite ;

int pt_qry_decode_ptw(struct pt_query_decoder *decoder)
{
 struct pt_packet_ptw packet;
 struct pt_event *event;
 int size, pls;

 if (!decoder)
  return -pte_internal;

 size = pt_pkt_read_ptw(&packet, decoder->pos, &decoder->config);
 if (size < 0)
  return size;

 pls = pt_ptw_size(packet.plc);
 if (pls < 0)
  return pls;

 if (packet.ip) {
  event = pt_evq_enqueue(&decoder->evq, evb_fup);
  if (!event)
   return -pte_internal;
 } else {
  event = pt_evq_standalone(&decoder->evq);
  if (!event)
   return -pte_internal;

  event->ip_suppressed = 1;

  decoder->event = event;
 }

 event->type = ptev_ptwrite;
 event->variant.ptwrite.size = (uint8_t) pls;
 event->variant.ptwrite.payload = packet.payload;

 decoder->pos += size;
 return 0;
}
