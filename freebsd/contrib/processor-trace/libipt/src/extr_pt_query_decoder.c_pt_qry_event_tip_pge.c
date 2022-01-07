
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pt_query_decoder {int dummy; } ;
struct TYPE_3__ {int ip; } ;
struct TYPE_4__ {TYPE_1__ exec_mode; } ;
struct pt_event {int type; TYPE_2__ variant; } ;


 int pt_qry_event_ip (int *,struct pt_event*,struct pt_query_decoder const*) ;
 int pte_bad_context ;
 int pte_internal ;


__attribute__((used)) static int pt_qry_event_tip_pge(struct pt_event *ev,
    const struct pt_query_decoder *decoder)
{
 if (!ev)
  return -pte_internal;

 switch (ev->type) {
 case 128:
  return pt_qry_event_ip(&ev->variant.exec_mode.ip, ev, decoder);

 default:
  break;
 }

 return -pte_bad_context;
}
