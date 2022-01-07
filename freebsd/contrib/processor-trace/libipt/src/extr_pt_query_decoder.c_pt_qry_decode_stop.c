
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_query_decoder {int pos; struct pt_event* event; int evq; } ;
struct pt_event {int type; } ;


 struct pt_event* pt_evq_standalone (int *) ;
 int pt_qry_event_time (struct pt_event*,struct pt_query_decoder*) ;
 int pte_internal ;
 int ptev_stop ;
 scalar_t__ ptps_stop ;

int pt_qry_decode_stop(struct pt_query_decoder *decoder)
{
 struct pt_event *event;
 int errcode;

 if (!decoder)
  return -pte_internal;


 event = pt_evq_standalone(&decoder->evq);
 if (!event)
  return -pte_internal;

 event->type = ptev_stop;

 decoder->event = event;

 errcode = pt_qry_event_time(event, decoder);
 if (errcode < 0)
  return errcode;

 decoder->pos += ptps_stop;
 return 0;
}
