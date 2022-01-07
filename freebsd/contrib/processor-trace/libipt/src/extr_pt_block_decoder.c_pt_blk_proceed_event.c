
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_9__ ;
typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct pt_insn_ext {int dummy; } ;
struct pt_insn {int dummy; } ;
struct TYPE_17__ {int ip; } ;
struct TYPE_16__ {int ip; } ;
struct TYPE_15__ {int ip; } ;
struct TYPE_14__ {int from; } ;
struct TYPE_10__ {int at; } ;
struct TYPE_18__ {TYPE_8__ mwait; TYPE_7__ exstop; TYPE_6__ tsx; TYPE_5__ async_branch; TYPE_1__ async_disabled; } ;
struct pt_event {int type; TYPE_9__ variant; int ip_suppressed; } ;
struct TYPE_11__ {int skd022; } ;
struct TYPE_12__ {TYPE_2__ errata; } ;
struct TYPE_13__ {TYPE_3__ config; } ;
struct pt_block_decoder {int bound_paging; int bound_vmcs; int bound_ptwrite; int enabled; TYPE_4__ query; struct pt_event event; int process_event; } ;
struct pt_block {int dummy; } ;


 int pt_blk_handle_erratum_skd022 (struct pt_block_decoder*,struct pt_event*) ;
 int pt_blk_postpone_insn (struct pt_block_decoder*,struct pt_insn*,struct pt_insn_ext*) ;
 int pt_blk_proceed_to_async_paging (struct pt_block_decoder*,struct pt_block*,struct pt_event*) ;
 int pt_blk_proceed_to_async_vmcs (struct pt_block_decoder*,struct pt_block*,struct pt_event*) ;
 int pt_blk_proceed_to_disabled (struct pt_block_decoder*,struct pt_block*,struct pt_insn*,struct pt_insn_ext*,struct pt_event*) ;
 int pt_blk_proceed_to_exec_mode (struct pt_block_decoder*,struct pt_block*,struct pt_event*) ;
 int pt_blk_proceed_to_insn (struct pt_block_decoder*,struct pt_block*,struct pt_insn*,struct pt_insn_ext*,int ) ;
 int pt_blk_proceed_to_ip (struct pt_block_decoder*,struct pt_block*,struct pt_insn*,struct pt_insn_ext*,int ) ;
 int pt_blk_proceed_to_ptwrite (struct pt_block_decoder*,struct pt_block*,struct pt_insn*,struct pt_insn_ext*,struct pt_event*) ;
 int pt_blk_set_disable_resume_ip (struct pt_block_decoder*,struct pt_insn*) ;
 int pt_blk_status (struct pt_block_decoder*,int ) ;
 int pt_insn_binds_to_pip ;
 int pt_insn_binds_to_vmcs ;
 int pte_bad_query ;
 int pte_internal ;
 int pts_event_pending ;

__attribute__((used)) static int pt_blk_proceed_event(struct pt_block_decoder *decoder,
    struct pt_block *block)
{
 struct pt_insn_ext iext;
 struct pt_insn insn;
 struct pt_event *ev;
 int status;

 if (!decoder || !decoder->process_event || !block)
  return -pte_internal;

 ev = &decoder->event;
 switch (ev->type) {
 case 141:
  break;

 case 142:
  status = pt_blk_proceed_to_disabled(decoder, block, &insn,
          &iext, ev);
  if (status <= 0) {




   if (status != -pte_bad_query)
    return status;

   status = pt_blk_set_disable_resume_ip(decoder, &insn);
   if (status < 0)
    return status;
  }

  break;

 case 146:
  status = pt_blk_proceed_to_ip(decoder, block, &insn, &iext,
           ev->variant.async_disabled.at);
  if (status <= 0)
   return status;

  if (decoder->query.config.errata.skd022) {
   status = pt_blk_handle_erratum_skd022(decoder, ev);
   if (status != 0) {
    if (status < 0)
     return status;




    return pt_blk_proceed_event(decoder, block);
   }
  }

  break;

 case 147:
  status = pt_blk_proceed_to_ip(decoder, block, &insn, &iext,
           ev->variant.async_branch.from);
  if (status <= 0)
   return status;

  break;

 case 135:
  if (!decoder->enabled)
   break;

  status = pt_blk_proceed_to_insn(decoder, block, &insn, &iext,
      pt_insn_binds_to_pip);
  if (status <= 0)
   return status;




  decoder->bound_paging = 1;

  return pt_blk_postpone_insn(decoder, &insn, &iext);

 case 145:
  status = pt_blk_proceed_to_async_paging(decoder, block, ev);
  if (status <= 0)
   return status;

  break;

 case 128:
  if (!decoder->enabled)
   break;

  status = pt_blk_proceed_to_insn(decoder, block, &insn, &iext,
      pt_insn_binds_to_vmcs);
  if (status <= 0)
   return status;




  decoder->bound_vmcs = 1;

  return pt_blk_postpone_insn(decoder, &insn, &iext);

 case 144:
  status = pt_blk_proceed_to_async_vmcs(decoder, block, ev);
  if (status <= 0)
   return status;

  break;

 case 136:
  break;

 case 140:
  status = pt_blk_proceed_to_exec_mode(decoder, block, ev);
  if (status <= 0)
   return status;

  break;

 case 129:
  if (ev->ip_suppressed)
   break;

  status = pt_blk_proceed_to_ip(decoder, block, &insn, &iext,
           ev->variant.tsx.ip);
  if (status <= 0)
   return status;

  break;

 case 131:
  break;

 case 139:
  if (!decoder->enabled || ev->ip_suppressed)
   break;

  status = pt_blk_proceed_to_ip(decoder, block, &insn, &iext,
           ev->variant.exstop.ip);
  if (status <= 0)
   return status;

  break;

 case 137:
  if (!decoder->enabled || ev->ip_suppressed)
   break;

  status = pt_blk_proceed_to_ip(decoder, block, &insn, &iext,
           ev->variant.mwait.ip);
  if (status <= 0)
   return status;

  break;

 case 133:
 case 132:
  break;

 case 134:
  if (!decoder->enabled)
   break;

  status = pt_blk_proceed_to_ptwrite(decoder, block, &insn,
         &iext, ev);
  if (status <= 0)
   return status;




  decoder->bound_ptwrite = 1;

  return pt_blk_postpone_insn(decoder, &insn, &iext);

 case 130:
 case 143:
 case 138:
  break;
 }

 return pt_blk_status(decoder, pts_event_pending);
}
