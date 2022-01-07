
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_query_decoder {int enabled; int evq; } ;
struct pt_event {int type; } ;


 int evb_fup ;
 struct pt_event* pt_evq_enqueue (int *,int ) ;
 int pt_qry_event_time (struct pt_event*,struct pt_query_decoder*) ;
 int pte_internal ;
 int ptev_overflow ;

__attribute__((used)) static int pt_qry_event_ovf_enabled(struct pt_query_decoder *decoder)
{
 struct pt_event *ev;

 if (!decoder)
  return -pte_internal;

 ev = pt_evq_enqueue(&decoder->evq, evb_fup);
 if (!ev)
  return -pte_internal;

 ev->type = ptev_overflow;

 decoder->enabled = 1;

 return pt_qry_event_time(ev, decoder);
}
