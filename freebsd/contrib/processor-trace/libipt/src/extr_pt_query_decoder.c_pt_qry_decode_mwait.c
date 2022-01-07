
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pt_query_decoder {int pos; int evq; int config; } ;
struct pt_packet_mwait {int ext; int hints; } ;
struct TYPE_3__ {int ext; int hints; } ;
struct TYPE_4__ {TYPE_1__ mwait; } ;
struct pt_event {TYPE_2__ variant; int type; } ;


 int evb_fup ;
 struct pt_event* pt_evq_enqueue (int *,int ) ;
 int pt_pkt_read_mwait (struct pt_packet_mwait*,int,int *) ;
 int pte_internal ;
 int ptev_mwait ;

int pt_qry_decode_mwait(struct pt_query_decoder *decoder)
{
 struct pt_packet_mwait packet;
 struct pt_event *event;
 int size;

 if (!decoder)
  return -pte_internal;

 size = pt_pkt_read_mwait(&packet, decoder->pos, &decoder->config);
 if (size < 0)
  return size;

 event = pt_evq_enqueue(&decoder->evq, evb_fup);
 if (!event)
  return -pte_internal;

 event->type = ptev_mwait;
 event->variant.mwait.hints = packet.hints;
 event->variant.mwait.ext = packet.ext;

 decoder->pos += size;
 return 0;
}
