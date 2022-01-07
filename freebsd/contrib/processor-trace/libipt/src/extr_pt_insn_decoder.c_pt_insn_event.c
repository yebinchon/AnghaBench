
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_15__ {int ip; } ;
struct TYPE_14__ {int ip; } ;
struct TYPE_13__ {int ip; } ;
struct TYPE_12__ {int ip; } ;
struct TYPE_11__ {int from; } ;
struct TYPE_10__ {int at; } ;
struct TYPE_9__ {int resumed; int ip; } ;
struct TYPE_16__ {TYPE_7__ mwait; TYPE_6__ exstop; TYPE_5__ async_vmcs; TYPE_4__ async_paging; TYPE_3__ async_branch; TYPE_2__ async_disabled; TYPE_1__ enabled; } ;
struct pt_event {int type; TYPE_8__ variant; int ip_suppressed; } ;
struct pt_insn_decoder {int iext; int insn; scalar_t__ process_insn; scalar_t__ process_event; int ip; int enabled; struct pt_event event; } ;


 int fallthrough ;
 int memcpy (struct pt_event*,struct pt_event*,size_t) ;
 int pt_insn_check_insn_event (struct pt_insn_decoder*,int *,int *) ;
 int pt_insn_check_ip_event (struct pt_insn_decoder*,int *,int *) ;
 int pt_insn_proceed_postponed (struct pt_insn_decoder*) ;
 int pt_insn_process_async_branch (struct pt_insn_decoder*) ;
 int pt_insn_process_disabled (struct pt_insn_decoder*) ;
 int pt_insn_process_enabled (struct pt_insn_decoder*) ;
 int pt_insn_process_exec_mode (struct pt_insn_decoder*) ;
 int pt_insn_process_overflow (struct pt_insn_decoder*) ;
 int pt_insn_process_paging (struct pt_insn_decoder*) ;
 int pt_insn_process_stop (struct pt_insn_decoder*) ;
 int pt_insn_process_tsx (struct pt_insn_decoder*) ;
 int pt_insn_process_vmcs (struct pt_insn_decoder*) ;
 int pte_bad_query ;
 int pte_invalid ;
 int pts_event_pending ;

int pt_insn_event(struct pt_insn_decoder *decoder, struct pt_event *uevent,
    size_t size)
{
 struct pt_event *ev;
 int status;

 if (!decoder || !uevent)
  return -pte_invalid;


 if (!decoder->process_event)
  return -pte_bad_query;

 ev = &decoder->event;
 switch (ev->type) {
 default:





  return -pte_bad_query;

 case 141:




  if (decoder->ip == ev->variant.enabled.ip)
   ev->variant.enabled.resumed = 1;

  status = pt_insn_process_enabled(decoder);
  if (status < 0)
   return status;

  break;

 case 146:
  if (!ev->ip_suppressed &&
      decoder->ip != ev->variant.async_disabled.at)
   return -pte_bad_query;

  fallthrough;
 case 142:
  status = pt_insn_process_disabled(decoder);
  if (status < 0)
   return status;

  break;

 case 147:
  if (decoder->ip != ev->variant.async_branch.from)
   return -pte_bad_query;

  status = pt_insn_process_async_branch(decoder);
  if (status < 0)
   return status;

  break;

 case 145:
  if (!ev->ip_suppressed &&
      decoder->ip != ev->variant.async_paging.ip)
   return -pte_bad_query;

  fallthrough;
 case 135:
  status = pt_insn_process_paging(decoder);
  if (status < 0)
   return status;

  break;

 case 144:
  if (!ev->ip_suppressed &&
      decoder->ip != ev->variant.async_vmcs.ip)
   return -pte_bad_query;

  fallthrough;
 case 128:
  status = pt_insn_process_vmcs(decoder);
  if (status < 0)
   return status;

  break;

 case 136:
  status = pt_insn_process_overflow(decoder);
  if (status < 0)
   return status;

  break;

 case 140:
  status = pt_insn_process_exec_mode(decoder);
  if (status < 0)
   return status;

  break;

 case 129:
  status = pt_insn_process_tsx(decoder);
  if (status < 0)
   return status;

  break;

 case 131:
  status = pt_insn_process_stop(decoder);
  if (status < 0)
   return status;

  break;

 case 139:
  if (!ev->ip_suppressed && decoder->enabled &&
      decoder->ip != ev->variant.exstop.ip)
   return -pte_bad_query;

  break;

 case 137:
  if (!ev->ip_suppressed && decoder->enabled &&
      decoder->ip != ev->variant.mwait.ip)
   return -pte_bad_query;

  break;

 case 133:
 case 132:
 case 134:
 case 130:
 case 143:
 case 138:
  break;
 }







 if (sizeof(*ev) < size)
  size = sizeof(*ev);

 memcpy(uevent, ev, size);


 decoder->process_event = 0;







 if (decoder->process_insn) {
  status = pt_insn_check_insn_event(decoder, &decoder->insn,
        &decoder->iext);

  if (status != 0) {
   if (status < 0)
    return status;

   if (status & pts_event_pending)
    return status;
  }


  status = pt_insn_proceed_postponed(decoder);
  if (status < 0)
   return status;
 }


 return pt_insn_check_ip_event(decoder, ((void*)0), ((void*)0));
}
