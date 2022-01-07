
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_query_decoder {int evq; int tcal; int last_time; int time; int tnt; int ip; int * event; scalar_t__ consume_packet; scalar_t__ enabled; } ;


 int pt_evq_init (int *) ;
 int pt_last_ip_init (int *) ;
 int pt_tcal_init (int *) ;
 int pt_time_init (int *) ;
 int pt_tnt_cache_init (int *) ;

__attribute__((used)) static void pt_qry_reset(struct pt_query_decoder *decoder)
{
 if (!decoder)
  return;

 decoder->enabled = 0;
 decoder->consume_packet = 0;
 decoder->event = ((void*)0);

 pt_last_ip_init(&decoder->ip);
 pt_tnt_cache_init(&decoder->tnt);
 pt_time_init(&decoder->time);
 pt_time_init(&decoder->last_time);
 pt_tcal_init(&decoder->tcal);
 pt_evq_init(&decoder->evq);
}
