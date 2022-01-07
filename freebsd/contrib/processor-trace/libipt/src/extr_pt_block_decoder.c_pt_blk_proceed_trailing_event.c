
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_9__ ;
typedef struct TYPE_23__ TYPE_8__ ;
typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_12__ ;
typedef struct TYPE_14__ TYPE_11__ ;
typedef struct TYPE_13__ TYPE_10__ ;


struct TYPE_14__ {int ip; } ;
struct TYPE_13__ {int ip; } ;
struct TYPE_24__ {int ip; } ;
struct TYPE_23__ {int ip; } ;
struct TYPE_22__ {int ip; } ;
struct TYPE_21__ {int from; } ;
struct TYPE_17__ {int at; } ;
struct TYPE_16__ {int ip; } ;
struct TYPE_15__ {TYPE_11__ mwait; TYPE_10__ exstop; TYPE_9__ exec_mode; TYPE_8__ async_vmcs; TYPE_7__ async_paging; TYPE_6__ async_branch; TYPE_2__ async_disabled; TYPE_1__ disabled; } ;
struct pt_event {int type; int ip_suppressed; TYPE_12__ variant; } ;
struct TYPE_18__ {int skd022; } ;
struct TYPE_19__ {TYPE_3__ errata; } ;
struct TYPE_20__ {TYPE_4__ config; } ;
struct pt_block_decoder {int bound_paging; int bound_vmcs; int bound_ptwrite; int iext; int insn; int process_insn; int enabled; int ip; TYPE_5__ query; struct pt_event event; } ;
struct pt_block {int dummy; } ;


 int pt_blk_clear_postponed_insn (struct pt_block_decoder*) ;
 int pt_blk_fetch_event (struct pt_block_decoder*) ;
 int pt_blk_handle_erratum_skd022 (struct pt_block_decoder*,struct pt_event*) ;
 int pt_blk_postpone_trailing_tsx (struct pt_block_decoder*,struct pt_block*,struct pt_event*) ;
 int pt_blk_proceed_postponed_insn (struct pt_block_decoder*) ;
 int pt_blk_set_disable_resume_ip (struct pt_block_decoder*,int *) ;
 int pt_blk_status (struct pt_block_decoder*,int ) ;
 int pt_insn_binds_to_pip (int *,int *) ;
 int pt_insn_binds_to_vmcs (int *,int *) ;
 int pt_insn_changes_cr3 (int *,int *) ;
 int pt_insn_is_ptwrite (int *,int *) ;
 int pt_insn_next_ip (int *,int *,int *) ;
 int pte_bad_query ;
 int pte_internal ;
 int pts_event_pending ;

__attribute__((used)) static int pt_blk_proceed_trailing_event(struct pt_block_decoder *decoder,
      struct pt_block *block)
{
 struct pt_event *ev;
 int status;

 if (!decoder)
  return -pte_internal;

 status = pt_blk_fetch_event(decoder);
 if (status <= 0) {
  if (status < 0)
   return status;

  status = pt_blk_proceed_postponed_insn(decoder);
  if (status < 0)
   return status;

  return pt_blk_status(decoder, 0);
 }

 ev = &decoder->event;
 switch (ev->type) {
 case 142:



  if (!decoder->process_insn)
   break;


  if (ev->ip_suppressed &&
      pt_insn_changes_cr3(&decoder->insn, &decoder->iext))
   return pt_blk_status(decoder, pts_event_pending);







  status = pt_insn_next_ip(&decoder->ip, &decoder->insn,
      &decoder->iext);
  if (status < 0) {
   if (status != -pte_bad_query)
    return status;

   status = pt_blk_set_disable_resume_ip(decoder,
             &decoder->insn);
   if (status < 0)
    return status;

   return pt_blk_status(decoder, pts_event_pending);
  }


  status = pt_blk_clear_postponed_insn(decoder);
  if (status < 0)
   return status;


  if (!ev->ip_suppressed &&
      decoder->ip == ev->variant.disabled.ip)
   return pt_blk_status(decoder, pts_event_pending);

  break;

 case 141:

  status = pt_blk_proceed_postponed_insn(decoder);
  if (status < 0)
   return status;

  return pt_blk_status(decoder, pts_event_pending);

 case 146:

  status = pt_blk_proceed_postponed_insn(decoder);
  if (status < 0)
   return status;

  if (decoder->ip != ev->variant.async_disabled.at)
   break;

  if (decoder->query.config.errata.skd022) {
   status = pt_blk_handle_erratum_skd022(decoder, ev);
   if (status != 0) {
    if (status < 0)
     return status;






    break;
   }
  }

  return pt_blk_status(decoder, pts_event_pending);

 case 147:

  status = pt_blk_proceed_postponed_insn(decoder);
  if (status < 0)
   return status;

  if (decoder->ip != ev->variant.async_branch.from)
   break;

  return pt_blk_status(decoder, pts_event_pending);

 case 135:

  if (!decoder->enabled)
   return pt_blk_status(decoder, pts_event_pending);







  if (!decoder->process_insn || decoder->bound_paging)
   break;





  if (!pt_insn_binds_to_pip(&decoder->insn, &decoder->iext))
   break;




  decoder->bound_paging = 1;

  return pt_blk_status(decoder, pts_event_pending);

 case 145:

  status = pt_blk_proceed_postponed_insn(decoder);
  if (status < 0)
   return status;

  if (!ev->ip_suppressed &&
      decoder->ip != ev->variant.async_paging.ip)
   break;

  return pt_blk_status(decoder, pts_event_pending);

 case 128:

  if (!decoder->enabled)
   return pt_blk_status(decoder, pts_event_pending);







  if (!decoder->process_insn || decoder->bound_vmcs)
   break;





  if (!pt_insn_binds_to_vmcs(&decoder->insn, &decoder->iext))
   break;




  decoder->bound_vmcs = 1;

  return pt_blk_status(decoder, pts_event_pending);

 case 144:

  status = pt_blk_proceed_postponed_insn(decoder);
  if (status < 0)
   return status;

  if (!ev->ip_suppressed &&
      decoder->ip != ev->variant.async_vmcs.ip)
   break;

  return pt_blk_status(decoder, pts_event_pending);

 case 136:

  status = pt_blk_proceed_postponed_insn(decoder);
  if (status < 0)
   return status;

  return pt_blk_status(decoder, pts_event_pending);

 case 140:

  status = pt_blk_proceed_postponed_insn(decoder);
  if (status < 0)
   return status;

  if (!ev->ip_suppressed &&
      decoder->ip != ev->variant.exec_mode.ip)
   break;

  return pt_blk_status(decoder, pts_event_pending);

 case 129:

  status = pt_blk_proceed_postponed_insn(decoder);
  if (status < 0)
   return status;

  status = pt_blk_postpone_trailing_tsx(decoder, block, ev);
  if (status != 0) {
   if (status < 0)
    return status;

   break;
  }

  return pt_blk_status(decoder, pts_event_pending);

 case 131:

  status = pt_blk_proceed_postponed_insn(decoder);
  if (status < 0)
   return status;

  return pt_blk_status(decoder, pts_event_pending);

 case 139:

  status = pt_blk_proceed_postponed_insn(decoder);
  if (status < 0)
   return status;

  if (!ev->ip_suppressed && decoder->enabled &&
      decoder->ip != ev->variant.exstop.ip)
   break;

  return pt_blk_status(decoder, pts_event_pending);

 case 137:

  status = pt_blk_proceed_postponed_insn(decoder);
  if (status < 0)
   return status;

  if (!ev->ip_suppressed && decoder->enabled &&
      decoder->ip != ev->variant.mwait.ip)
   break;

  return pt_blk_status(decoder, pts_event_pending);

 case 133:
 case 132:

  status = pt_blk_proceed_postponed_insn(decoder);
  if (status < 0)
   return status;

  return pt_blk_status(decoder, pts_event_pending);

 case 134:

  if (!decoder->enabled)
   return pt_blk_status(decoder, pts_event_pending);






  if (!decoder->process_insn || decoder->bound_ptwrite)
   break;





  if (!ev->ip_suppressed ||
      !pt_insn_is_ptwrite(&decoder->insn, &decoder->iext))
   break;




  decoder->bound_ptwrite = 1;

  return pt_blk_status(decoder, pts_event_pending);

 case 130:
 case 143:
 case 138:

  status = pt_blk_proceed_postponed_insn(decoder);
  if (status < 0)
   return status;

  return pt_blk_status(decoder, pts_event_pending);
 }


 status = pt_blk_proceed_postponed_insn(decoder);
 if (status < 0)
  return status;

 return pt_blk_status(decoder, 0);
}
