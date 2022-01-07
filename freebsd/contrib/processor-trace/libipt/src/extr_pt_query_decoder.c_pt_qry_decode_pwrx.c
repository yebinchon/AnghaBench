
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pt_query_decoder {int pos; struct pt_event* event; int evq; int config; } ;
struct pt_packet_pwrx {scalar_t__ autonomous; scalar_t__ store; scalar_t__ interrupt; int deepest; int last; } ;
struct TYPE_3__ {int interrupt; int store; int autonomous; int deepest; int last; } ;
struct TYPE_4__ {TYPE_1__ pwrx; } ;
struct pt_event {TYPE_2__ variant; int type; } ;


 struct pt_event* pt_evq_standalone (int *) ;
 int pt_pkt_read_pwrx (struct pt_packet_pwrx*,int,int *) ;
 int pte_internal ;
 int ptev_pwrx ;

int pt_qry_decode_pwrx(struct pt_query_decoder *decoder)
{
 struct pt_packet_pwrx packet;
 struct pt_event *event;
 int size;

 if (!decoder)
  return -pte_internal;

 size = pt_pkt_read_pwrx(&packet, decoder->pos, &decoder->config);
 if (size < 0)
  return size;

 event = pt_evq_standalone(&decoder->evq);
 if (!event)
  return -pte_internal;

 event->type = ptev_pwrx;
 event->variant.pwrx.last = packet.last;
 event->variant.pwrx.deepest = packet.deepest;

 if (packet.interrupt)
  event->variant.pwrx.interrupt = 1;
 if (packet.store)
  event->variant.pwrx.store = 1;
 if (packet.autonomous)
  event->variant.pwrx.autonomous = 1;

 decoder->event = event;

 decoder->pos += size;
 return 0;
}
