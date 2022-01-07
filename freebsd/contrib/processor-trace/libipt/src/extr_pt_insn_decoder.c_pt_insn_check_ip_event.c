
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_9__ ;
typedef struct TYPE_21__ TYPE_8__ ;
typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_11__ ;
typedef struct TYPE_12__ TYPE_10__ ;


struct pt_insn_ext {int dummy; } ;
struct TYPE_15__ {int skd022; } ;
struct TYPE_16__ {TYPE_2__ errata; } ;
struct TYPE_17__ {TYPE_3__ config; } ;
struct TYPE_12__ {int ip; } ;
struct TYPE_22__ {int ip; } ;
struct TYPE_21__ {int ip; } ;
struct TYPE_20__ {int ip; } ;
struct TYPE_19__ {int ip; } ;
struct TYPE_18__ {int from; } ;
struct TYPE_14__ {int at; } ;
struct TYPE_13__ {TYPE_10__ mwait; TYPE_9__ exstop; TYPE_8__ async_vmcs; TYPE_7__ async_paging; TYPE_6__ exec_mode; TYPE_5__ async_branch; TYPE_1__ async_disabled; } ;
struct pt_event {int type; TYPE_11__ variant; int ip_suppressed; } ;
struct pt_insn_decoder {int enabled; int ip; TYPE_4__ query; struct pt_event event; } ;
struct pt_insn {int dummy; } ;


 int event_pending (struct pt_insn_decoder*) ;
 int handle_erratum_skd022 (struct pt_insn_decoder*) ;
 int pt_insn_postpone_tsx (struct pt_insn_decoder*,struct pt_insn const*,struct pt_insn_ext const*,struct pt_event*) ;
 int pt_insn_status (struct pt_insn_decoder*,int ) ;
 int pte_internal ;
 int pts_event_pending ;

__attribute__((used)) static int pt_insn_check_ip_event(struct pt_insn_decoder *decoder,
      const struct pt_insn *insn,
      const struct pt_insn_ext *iext)
{
 struct pt_event *ev;
 int status;

 if (!decoder)
  return -pte_internal;

 status = event_pending(decoder);
 if (status <= 0) {
  if (status < 0)
   return status;

  return pt_insn_status(decoder, 0);
 }

 ev = &decoder->event;
 switch (ev->type) {
 case 142:
  break;

 case 141:
  return pt_insn_status(decoder, pts_event_pending);

 case 146:
  if (ev->variant.async_disabled.at != decoder->ip)
   break;

  if (decoder->query.config.errata.skd022) {
   int errcode;

   errcode = handle_erratum_skd022(decoder);
   if (errcode != 0) {
    if (errcode < 0)
     return errcode;





    break;
   }
  }

  return pt_insn_status(decoder, pts_event_pending);

 case 129:
  status = pt_insn_postpone_tsx(decoder, insn, iext, ev);
  if (status != 0) {
   if (status < 0)
    return status;

   break;
  }

  return pt_insn_status(decoder, pts_event_pending);

 case 147:
  if (ev->variant.async_branch.from != decoder->ip)
   break;

  return pt_insn_status(decoder, pts_event_pending);

 case 136:
  return pt_insn_status(decoder, pts_event_pending);

 case 140:
  if (!ev->ip_suppressed &&
      ev->variant.exec_mode.ip != decoder->ip)
   break;

  return pt_insn_status(decoder, pts_event_pending);

 case 135:
  if (decoder->enabled)
   break;

  return pt_insn_status(decoder, pts_event_pending);

 case 145:
  if (!ev->ip_suppressed &&
      ev->variant.async_paging.ip != decoder->ip)
   break;

  return pt_insn_status(decoder, pts_event_pending);

 case 128:
  if (decoder->enabled)
   break;

  return pt_insn_status(decoder, pts_event_pending);

 case 144:
  if (!ev->ip_suppressed &&
      ev->variant.async_vmcs.ip != decoder->ip)
   break;

  return pt_insn_status(decoder, pts_event_pending);

 case 131:
  return pt_insn_status(decoder, pts_event_pending);

 case 139:
  if (!ev->ip_suppressed && decoder->enabled &&
      decoder->ip != ev->variant.exstop.ip)
   break;

  return pt_insn_status(decoder, pts_event_pending);

 case 137:
  if (!ev->ip_suppressed && decoder->enabled &&
      decoder->ip != ev->variant.mwait.ip)
   break;

  return pt_insn_status(decoder, pts_event_pending);

 case 133:
 case 132:
  return pt_insn_status(decoder, pts_event_pending);

 case 134:
  if (decoder->enabled)
   break;

  return pt_insn_status(decoder, pts_event_pending);

 case 130:
 case 143:
 case 138:
  return pt_insn_status(decoder, pts_event_pending);
 }

 return pt_insn_status(decoder, 0);
}
