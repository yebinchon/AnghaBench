
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pt_query_decoder {int evq; struct pt_event* event; int enabled; } ;
struct pt_packet_mode_tsx {int abrt; int intx; } ;
struct TYPE_3__ {int aborted; int speculative; scalar_t__ ip; } ;
struct TYPE_4__ {TYPE_1__ tsx; } ;
struct pt_event {int ip_suppressed; TYPE_2__ variant; int type; } ;


 int evb_fup ;
 struct pt_event* pt_evq_enqueue (int *,int ) ;
 struct pt_event* pt_evq_standalone (int *) ;
 int pt_qry_event_time (struct pt_event*,struct pt_query_decoder*) ;
 int pte_internal ;
 int pte_nomem ;
 int ptev_tsx ;

__attribute__((used)) static int pt_qry_decode_mode_tsx(struct pt_query_decoder *decoder,
      const struct pt_packet_mode_tsx *packet)
{
 struct pt_event *event;

 if (!decoder || !packet)
  return -pte_internal;


 if (!decoder->enabled) {
  event = pt_evq_standalone(&decoder->evq);
  if (!event)
   return -pte_internal;


  event->variant.tsx.ip = 0;
  event->ip_suppressed = 1;


  decoder->event = event;
 } else {

  event = pt_evq_enqueue(&decoder->evq, evb_fup);
  if (!event)
   return -pte_nomem;
 }

 event->type = ptev_tsx;
 event->variant.tsx.speculative = packet->intx;
 event->variant.tsx.aborted = packet->abrt;

 return pt_qry_event_time(event, decoder);
}
