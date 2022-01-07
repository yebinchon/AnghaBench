
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pt_query_decoder {int pos; struct pt_event* event; int evq; int config; } ;
struct pt_packet_pwre {scalar_t__ hw; int sub_state; int state; } ;
struct TYPE_3__ {int hw; int sub_state; int state; } ;
struct TYPE_4__ {TYPE_1__ pwre; } ;
struct pt_event {TYPE_2__ variant; int type; } ;


 struct pt_event* pt_evq_standalone (int *) ;
 int pt_pkt_read_pwre (struct pt_packet_pwre*,int,int *) ;
 int pte_internal ;
 int ptev_pwre ;

int pt_qry_decode_pwre(struct pt_query_decoder *decoder)
{
 struct pt_packet_pwre packet;
 struct pt_event *event;
 int size;

 if (!decoder)
  return -pte_internal;

 size = pt_pkt_read_pwre(&packet, decoder->pos, &decoder->config);
 if (size < 0)
  return size;

 event = pt_evq_standalone(&decoder->evq);
 if (!event)
  return -pte_internal;

 event->type = ptev_pwre;
 event->variant.pwre.state = packet.state;
 event->variant.pwre.sub_state = packet.sub_state;

 if (packet.hw)
  event->variant.pwre.hw = 1;

 decoder->event = event;

 decoder->pos += size;
 return 0;
}
