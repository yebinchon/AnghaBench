
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_9__ ;
typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


struct TYPE_20__ {int ip; } ;
struct TYPE_19__ {int ip; } ;
struct TYPE_18__ {int ip; } ;
struct TYPE_17__ {int ip; } ;
struct TYPE_16__ {int ip; } ;
struct TYPE_15__ {int ip; } ;
struct TYPE_14__ {int from; } ;
struct TYPE_13__ {int at; } ;
struct TYPE_12__ {int resumed; int ip; } ;
struct TYPE_11__ {TYPE_9__ mwait; TYPE_8__ exstop; TYPE_7__ tsx; TYPE_6__ exec_mode; TYPE_5__ async_vmcs; TYPE_4__ async_paging; TYPE_3__ async_branch; TYPE_2__ async_disabled; TYPE_1__ enabled; } ;
struct pt_event {int type; TYPE_10__ variant; int ip_suppressed; } ;
struct pt_block_decoder {int process_event; int ip; int enabled; struct pt_event event; } ;


 int fallthrough ;
 int memcpy (struct pt_event*,struct pt_event*,size_t) ;
 int pt_blk_proceed_trailing_event (struct pt_block_decoder*,int *) ;
 int pt_blk_process_async_branch (struct pt_block_decoder*,struct pt_event*) ;
 int pt_blk_process_disabled (struct pt_block_decoder*,struct pt_event*) ;
 int pt_blk_process_enabled (struct pt_block_decoder*,struct pt_event*) ;
 int pt_blk_process_exec_mode (struct pt_block_decoder*,struct pt_event*) ;
 int pt_blk_process_overflow (struct pt_block_decoder*,struct pt_event*) ;
 int pt_blk_process_paging (struct pt_block_decoder*,struct pt_event*) ;
 int pt_blk_process_stop (struct pt_block_decoder*,struct pt_event*) ;
 int pt_blk_process_tsx (struct pt_block_decoder*,struct pt_event*) ;
 int pt_blk_process_vmcs (struct pt_block_decoder*,struct pt_event*) ;
 int pte_bad_query ;
 int pte_invalid ;
int pt_blk_event(struct pt_block_decoder *decoder, struct pt_event *uevent,
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
 case 141:




  if (ev->variant.enabled.ip == decoder->ip)
   ev->variant.enabled.resumed = 1;

  status = pt_blk_process_enabled(decoder, ev);
  if (status < 0)
   return status;

  break;

 case 146:
  if (decoder->ip != ev->variant.async_disabled.at)
   return -pte_bad_query;

  fallthrough;
 case 142:

  status = pt_blk_process_disabled(decoder, ev);
  if (status < 0)
   return status;

  break;

 case 147:
  if (decoder->ip != ev->variant.async_branch.from)
   return -pte_bad_query;

  status = pt_blk_process_async_branch(decoder, ev);
  if (status < 0)
   return status;

  break;

 case 145:
  if (!ev->ip_suppressed &&
      decoder->ip != ev->variant.async_paging.ip)
   return -pte_bad_query;

  fallthrough;
 case 135:
  status = pt_blk_process_paging(decoder, ev);
  if (status < 0)
   return status;

  break;

 case 144:
  if (!ev->ip_suppressed &&
      decoder->ip != ev->variant.async_vmcs.ip)
   return -pte_bad_query;

  fallthrough;
 case 128:
  status = pt_blk_process_vmcs(decoder, ev);
  if (status < 0)
   return status;

  break;

 case 136:
  status = pt_blk_process_overflow(decoder, ev);
  if (status < 0)
   return status;

  break;

 case 140:
  if (!ev->ip_suppressed &&
      decoder->ip != ev->variant.exec_mode.ip)
   return -pte_bad_query;

  status = pt_blk_process_exec_mode(decoder, ev);
  if (status < 0)
   return status;

  break;

 case 129:
  if (!ev->ip_suppressed && decoder->ip != ev->variant.tsx.ip)
   return -pte_bad_query;

  status = pt_blk_process_tsx(decoder, ev);
  if (status < 0)
   return status;

  break;

 case 131:
  status = pt_blk_process_stop(decoder, ev);
  if (status < 0)
   return status;

  break;

 case 139:
  if (!ev->ip_suppressed && decoder->enabled &&
      decoder->ip != ev->variant.exstop.ip)
   return -pte_bad_query;

  decoder->process_event = 0;
  break;

 case 137:
  if (!ev->ip_suppressed && decoder->enabled &&
      decoder->ip != ev->variant.mwait.ip)
   return -pte_bad_query;

  decoder->process_event = 0;
  break;

 case 133:
 case 132:
 case 134:
 case 130:
 case 143:
 case 138:
  decoder->process_event = 0;
  break;
 }







 if (sizeof(*ev) < size)
  size = sizeof(*ev);

 memcpy(uevent, ev, size);


 return pt_blk_proceed_trailing_event(decoder, ((void*)0));
}
