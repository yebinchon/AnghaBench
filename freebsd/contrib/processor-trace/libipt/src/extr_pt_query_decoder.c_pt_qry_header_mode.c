
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct pt_query_decoder {int pos; int evq; int config; } ;
struct TYPE_9__ {int abrt; int intx; } ;
struct TYPE_10__ {TYPE_4__ tsx; int exec; } ;
struct pt_packet_mode {int leaf; TYPE_5__ bits; } ;
struct TYPE_7__ {int aborted; int speculative; } ;
struct TYPE_6__ {int mode; } ;
struct TYPE_8__ {TYPE_2__ tsx; TYPE_1__ exec_mode; } ;
struct pt_event {TYPE_3__ variant; int type; } ;


 int evb_psbend ;
 struct pt_event* pt_evq_enqueue (int *,int ) ;
 int pt_get_exec_mode (int *) ;


 int pt_pkt_read_mode (struct pt_packet_mode*,int,int *) ;
 int pte_internal ;
 int pte_nomem ;
 int ptev_exec_mode ;
 int ptev_tsx ;

int pt_qry_header_mode(struct pt_query_decoder *decoder)
{
 struct pt_packet_mode packet;
 struct pt_event *event;
 int size;

 if (!decoder)
  return -pte_internal;

 size = pt_pkt_read_mode(&packet, decoder->pos, &decoder->config);
 if (size < 0)
  return size;


 event = pt_evq_enqueue(&decoder->evq, evb_psbend);
 if (!event)
  return -pte_nomem;

 switch (packet.leaf) {
 case 129:
  event->type = ptev_exec_mode;
  event->variant.exec_mode.mode =
   pt_get_exec_mode(&packet.bits.exec);
  break;

 case 128:
  event->type = ptev_tsx;
  event->variant.tsx.speculative = packet.bits.tsx.intx;
  event->variant.tsx.aborted = packet.bits.tsx.abrt;
  break;
 }

 decoder->pos += size;
 return 0;
}
