
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pt_query_decoder {int pos; struct pt_event* event; int evq; int config; } ;
struct pt_packet_mnt {int payload; } ;
struct TYPE_3__ {int payload; } ;
struct TYPE_4__ {TYPE_1__ mnt; } ;
struct pt_event {TYPE_2__ variant; int type; } ;


 struct pt_event* pt_evq_standalone (int *) ;
 int pt_pkt_read_mnt (struct pt_packet_mnt*,int,int *) ;
 int pt_qry_event_time (struct pt_event*,struct pt_query_decoder*) ;
 int pte_internal ;
 int ptev_mnt ;

int pt_qry_decode_mnt(struct pt_query_decoder *decoder)
{
 struct pt_packet_mnt packet;
 struct pt_event *event;
 int size, errcode;

 if (!decoder)
  return -pte_internal;

 size = pt_pkt_read_mnt(&packet, decoder->pos, &decoder->config);
 if (size < 0)
  return size;

 event = pt_evq_standalone(&decoder->evq);
 if (!event)
  return -pte_internal;

 event->type = ptev_mnt;
 event->variant.mnt.payload = packet.payload;

 decoder->event = event;

 errcode = pt_qry_event_time(event, decoder);
 if (errcode < 0)
  return errcode;

 decoder->pos += size;

 return 0;
}
