
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_query_decoder {struct pt_event* event; scalar_t__ enabled; int evq; } ;
struct pt_event {int ip_suppressed; int type; } ;


 struct pt_event* pt_evq_standalone (int *) ;
 int pt_qry_event_time (struct pt_event*,struct pt_query_decoder*) ;
 int pte_internal ;
 int ptev_overflow ;

__attribute__((used)) static int pt_qry_event_ovf_disabled(struct pt_query_decoder *decoder)
{
 struct pt_event *ev;

 if (!decoder)
  return -pte_internal;

 ev = pt_evq_standalone(&decoder->evq);
 if (!ev)
  return -pte_internal;

 ev->type = ptev_overflow;





 ev->ip_suppressed = 1;

 decoder->enabled = 0;
 decoder->event = ev;

 return pt_qry_event_time(ev, decoder);
}
