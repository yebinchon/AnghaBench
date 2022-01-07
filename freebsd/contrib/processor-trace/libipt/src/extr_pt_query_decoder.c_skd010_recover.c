
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct pt_time_cal {int dummy; } ;
struct pt_time {int dummy; } ;
struct pt_last_ip {int dummy; } ;
struct TYPE_6__ {scalar_t__ begin; } ;
struct pt_query_decoder {int enabled; struct pt_event* event; struct pt_time_cal tcal; struct pt_time time; struct pt_last_ip ip; TYPE_3__ config; scalar_t__ pos; int evq; } ;
struct pt_packet_ip {int dummy; } ;
struct TYPE_4__ {int ip; } ;
struct TYPE_5__ {TYPE_1__ overflow; } ;
struct pt_event {TYPE_2__ variant; int type; } ;


 struct pt_event* pt_evq_standalone (int *) ;
 int pt_last_ip_query (int *,struct pt_last_ip*) ;
 int pt_last_ip_update_ip (struct pt_last_ip*,struct pt_packet_ip const*,TYPE_3__*) ;
 int pt_qry_event_time (struct pt_event*,struct pt_query_decoder*) ;
 int pte_bad_context ;
 int pte_internal ;
 int ptev_overflow ;

__attribute__((used)) static int skd010_recover(struct pt_query_decoder *decoder,
     const struct pt_packet_ip *packet,
     const struct pt_time_cal *tcal,
     const struct pt_time *time, uint64_t offset)
{
 struct pt_last_ip ip;
 struct pt_event *ev;
 int errcode;

 if (!decoder || !packet || !tcal || !time)
  return -pte_internal;


 ip = decoder->ip;


 errcode = pt_last_ip_update_ip(&ip, packet, &decoder->config);
 if (errcode < 0)
  return errcode;


 ev = pt_evq_standalone(&decoder->evq);
 if (!ev)
  return -pte_internal;

 ev->type = ptev_overflow;


 errcode = pt_last_ip_query(&ev->variant.overflow.ip, &ip);
 if (errcode < 0)
  return -pte_bad_context;


 decoder->pos = decoder->config.begin + offset;


 decoder->enabled = 1;
 decoder->ip = ip;

 decoder->time = *time;
 decoder->tcal = *tcal;


 decoder->event = ev;

 return pt_qry_event_time(ev, decoder);
}
