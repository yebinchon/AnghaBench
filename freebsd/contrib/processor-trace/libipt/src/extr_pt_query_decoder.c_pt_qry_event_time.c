
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_query_decoder {int time; } ;
struct pt_event {int has_tsc; int lost_cyc; int lost_mtc; int tsc; } ;


 int pt_time_query_tsc (int *,int *,int *,int *) ;
 int pte_internal ;
 int pte_no_time ;

__attribute__((used)) static int pt_qry_event_time(struct pt_event *event,
        const struct pt_query_decoder *decoder)
{
 int errcode;

 if (!event || !decoder)
  return -pte_internal;

 errcode = pt_time_query_tsc(&event->tsc, &event->lost_mtc,
        &event->lost_cyc, &decoder->time);
 if (errcode < 0) {
  if (errcode != -pte_no_time)
   return errcode;
 } else
  event->has_tsc = 1;

 return 0;
}
