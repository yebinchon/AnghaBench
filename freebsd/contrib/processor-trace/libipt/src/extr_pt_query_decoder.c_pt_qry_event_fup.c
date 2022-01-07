
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct pt_query_decoder {int consume_packet; int ip; } ;
struct TYPE_11__ {int ip; } ;
struct TYPE_10__ {int ip; } ;
struct TYPE_9__ {int ip; } ;
struct TYPE_8__ {int ip; int aborted; } ;
struct TYPE_7__ {int ip; } ;
struct TYPE_12__ {TYPE_5__ ptwrite; TYPE_4__ mwait; TYPE_3__ exstop; TYPE_2__ tsx; TYPE_1__ overflow; } ;
struct pt_event {int type; TYPE_6__ variant; } ;


 int pt_last_ip_query (int *,int *) ;
 int pt_qry_event_ip (int *,struct pt_event*,struct pt_query_decoder*) ;
 int pte_internal ;






__attribute__((used)) static int pt_qry_event_fup(struct pt_event *ev,
       struct pt_query_decoder *decoder)
{
 if (!ev || !decoder)
  return -pte_internal;

 switch (ev->type) {
 case 130:
  decoder->consume_packet = 1;


  return pt_last_ip_query(&ev->variant.overflow.ip,
     &decoder->ip);

 case 128:
  if (!(ev->variant.tsx.aborted))
   decoder->consume_packet = 1;

  return pt_qry_event_ip(&ev->variant.tsx.ip, ev, decoder);

 case 132:
  decoder->consume_packet = 1;

  return pt_qry_event_ip(&ev->variant.exstop.ip, ev, decoder);

 case 131:
  decoder->consume_packet = 1;

  return pt_qry_event_ip(&ev->variant.mwait.ip, ev, decoder);

 case 129:
  decoder->consume_packet = 1;

  return pt_qry_event_ip(&ev->variant.ptwrite.ip, ev, decoder);

 default:
  break;
 }

 return -pte_internal;
}
