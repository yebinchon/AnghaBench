
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pt_query_decoder {int evq; } ;
struct pt_packet_mode_exec {int dummy; } ;
struct TYPE_3__ {int mode; } ;
struct TYPE_4__ {TYPE_1__ exec_mode; } ;
struct pt_event {TYPE_2__ variant; int type; } ;


 int evb_tip ;
 struct pt_event* pt_evq_enqueue (int *,int ) ;
 int pt_get_exec_mode (struct pt_packet_mode_exec const*) ;
 int pt_qry_event_time (struct pt_event*,struct pt_query_decoder*) ;
 int pte_internal ;
 int pte_nomem ;
 int ptev_exec_mode ;

__attribute__((used)) static int pt_qry_decode_mode_exec(struct pt_query_decoder *decoder,
       const struct pt_packet_mode_exec *packet)
{
 struct pt_event *event;

 if (!decoder || !packet)
  return -pte_internal;


 event = pt_evq_enqueue(&decoder->evq, evb_tip);
 if (!event)
  return -pte_nomem;

 event->type = ptev_exec_mode;
 event->variant.exec_mode.mode = pt_get_exec_mode(packet);

 return pt_qry_event_time(event, decoder);
}
