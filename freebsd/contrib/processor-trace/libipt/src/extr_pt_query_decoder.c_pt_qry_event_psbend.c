
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct pt_query_decoder {int dummy; } ;
struct TYPE_9__ {int ip; } ;
struct TYPE_8__ {int ip; } ;
struct TYPE_7__ {int ip; } ;
struct TYPE_6__ {int ip; } ;
struct TYPE_10__ {TYPE_4__ async_vmcs; TYPE_3__ tsx; TYPE_2__ exec_mode; TYPE_1__ async_paging; } ;
struct pt_event {int status_update; int type; TYPE_5__ variant; } ;


 int pt_qry_event_ip (int *,struct pt_event*,struct pt_query_decoder*) ;
 int pt_qry_event_time (struct pt_event*,struct pt_query_decoder*) ;
 int pte_internal ;







__attribute__((used)) static int pt_qry_event_psbend(struct pt_event *ev,
          struct pt_query_decoder *decoder)
{
 int errcode;

 if (!ev || !decoder)
  return -pte_internal;


 ev->status_update = 1;

 errcode = pt_qry_event_time(ev, decoder);
 if (errcode < 0)
  return errcode;

 switch (ev->type) {
 case 133:
  return pt_qry_event_ip(&ev->variant.async_paging.ip, ev,
           decoder);

 case 130:
  return pt_qry_event_ip(&ev->variant.exec_mode.ip, ev, decoder);

 case 128:
  return pt_qry_event_ip(&ev->variant.tsx.ip, ev, decoder);

 case 132:
  return pt_qry_event_ip(&ev->variant.async_vmcs.ip, ev,
           decoder);

 case 131:
  return 0;

 case 129:



  ev->status_update = 0;
  return 0;

 default:
  break;
 }

 return -pte_internal;
}
