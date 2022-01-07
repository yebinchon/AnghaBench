
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pt_query_decoder {int pos; int evq; int config; } ;
struct pt_packet_vmcs {int base; } ;
struct TYPE_3__ {int base; } ;
struct TYPE_4__ {TYPE_1__ async_vmcs; } ;
struct pt_event {TYPE_2__ variant; int type; } ;


 int evb_psbend ;
 struct pt_event* pt_evq_enqueue (int *,int ) ;
 int pt_pkt_read_vmcs (struct pt_packet_vmcs*,int,int *) ;
 int pte_internal ;
 int pte_nomem ;
 int ptev_async_vmcs ;

int pt_qry_header_vmcs(struct pt_query_decoder *decoder)
{
 struct pt_packet_vmcs packet;
 struct pt_event *event;
 int size;

 if (!decoder)
  return -pte_internal;

 size = pt_pkt_read_vmcs(&packet, decoder->pos, &decoder->config);
 if (size < 0)
  return size;

 event = pt_evq_enqueue(&decoder->evq, evb_psbend);
 if (!event)
  return -pte_nomem;

 event->type = ptev_async_vmcs;
 event->variant.async_vmcs.base = packet.base;

 decoder->pos += size;
 return 0;
}
