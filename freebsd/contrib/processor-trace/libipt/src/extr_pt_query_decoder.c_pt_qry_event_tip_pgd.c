
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
struct pt_query_decoder {int dummy; } ;
struct TYPE_6__ {int ip; int at; } ;
struct TYPE_4__ {int from; } ;
struct TYPE_5__ {TYPE_3__ async_disabled; TYPE_1__ async_branch; } ;
struct pt_event {int type; int ip_suppressed; TYPE_2__ variant; } ;


 int pt_qry_event_ip (int *,struct pt_event*,struct pt_query_decoder const*) ;
 int pte_bad_context ;
 int pte_internal ;

 int ptev_async_disabled ;




__attribute__((used)) static int pt_qry_event_tip_pgd(struct pt_event *ev,
    const struct pt_query_decoder *decoder)
{
 if (!ev)
  return -pte_internal;

 switch (ev->type) {
 case 131: {
  uint64_t at;


  at = ev->variant.async_branch.from;

  ev->type = ptev_async_disabled;
  ev->variant.async_disabled.at = at;

  return pt_qry_event_ip(&ev->variant.async_disabled.ip, ev,
           decoder);
 }

 case 130:
 case 129:
 case 128:
  ev->ip_suppressed = 1;

  return 0;

 default:
  break;
 }

 return -pte_bad_context;
}
