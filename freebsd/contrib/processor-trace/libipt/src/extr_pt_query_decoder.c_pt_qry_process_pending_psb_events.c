
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_query_decoder {struct pt_event* event; int evq; } ;
struct pt_event {int dummy; } ;


 int evb_psbend ;
 struct pt_event* pt_evq_dequeue (int *,int ) ;
 int pt_qry_event_psbend (struct pt_event*,struct pt_query_decoder*) ;
 int pte_internal ;

__attribute__((used)) static int pt_qry_process_pending_psb_events(struct pt_query_decoder *decoder)
{
 struct pt_event *ev;
 int errcode;

 if (!decoder)
  return -pte_internal;

 ev = pt_evq_dequeue(&decoder->evq, evb_psbend);
 if (!ev)
  return 0;

 errcode = pt_qry_event_psbend(ev, decoder);
 if (errcode < 0)
  return errcode;


 decoder->event = ev;


 return 1;
}
