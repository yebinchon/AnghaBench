
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct pt_query_decoder {int consume_packet; } ;
struct TYPE_7__ {int ip; } ;
struct TYPE_6__ {int ip; } ;
struct TYPE_10__ {int ip; } ;
struct TYPE_8__ {int to; } ;
struct TYPE_9__ {TYPE_2__ exec_mode; TYPE_1__ async_vmcs; TYPE_5__ async_paging; TYPE_3__ async_branch; } ;
struct pt_event {int type; TYPE_4__ variant; } ;


 int pt_qry_event_ip (int *,struct pt_event*,struct pt_query_decoder*) ;
 int pte_bad_context ;
 int pte_internal ;





__attribute__((used)) static int pt_qry_event_tip(struct pt_event *ev,
       struct pt_query_decoder *decoder)
{
 if (!ev || !decoder)
  return -pte_internal;

 switch (ev->type) {
 case 131:
  decoder->consume_packet = 1;

  return pt_qry_event_ip(&ev->variant.async_branch.to, ev,
           decoder);

 case 130:
  return pt_qry_event_ip(&ev->variant.async_paging.ip, ev,
           decoder);

 case 129:
  return pt_qry_event_ip(&ev->variant.async_vmcs.ip, ev,
           decoder);

 case 128:
  return pt_qry_event_ip(&ev->variant.exec_mode.ip, ev,
           decoder);

 default:
  break;
 }

 return -pte_bad_context;
}
