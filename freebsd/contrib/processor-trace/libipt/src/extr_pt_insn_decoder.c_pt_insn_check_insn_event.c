
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct pt_insn_ext {int dummy; } ;
struct TYPE_4__ {int config; } ;
struct TYPE_5__ {unsigned long long ip; } ;
struct TYPE_6__ {TYPE_2__ ptwrite; } ;
struct pt_event {int type; TYPE_3__ variant; int ip_suppressed; } ;
struct pt_insn_decoder {unsigned long long ip; int bound_paging; int bound_vmcs; int bound_ptwrite; TYPE_1__ query; struct pt_event event; } ;
struct pt_insn {unsigned long long ip; unsigned long long size; int iclass; } ;


 int event_pending (struct pt_insn_decoder*) ;
 int pt_insn_at_disabled_event (struct pt_event*,struct pt_insn const*,struct pt_insn_ext const*,int *) ;
 int pt_insn_binds_to_pip (struct pt_insn const*,struct pt_insn_ext const*) ;
 int pt_insn_binds_to_vmcs (struct pt_insn const*,struct pt_insn_ext const*) ;
 int pt_insn_is_ptwrite (struct pt_insn const*,struct pt_insn_ext const*) ;
 int pt_insn_next_ip (unsigned long long*,struct pt_insn const*,struct pt_insn_ext const*) ;
 int pt_insn_postpone (struct pt_insn_decoder*,struct pt_insn const*,struct pt_insn_ext const*) ;
 int pt_insn_status (struct pt_insn_decoder*,int ) ;
 int pte_bad_query ;
 int pte_internal ;
 int pts_event_pending ;

__attribute__((used)) static int pt_insn_check_insn_event(struct pt_insn_decoder *decoder,
        const struct pt_insn *insn,
        const struct pt_insn_ext *iext)
{
 struct pt_event *ev;
 int status;

 if (!decoder)
  return -pte_internal;

 status = event_pending(decoder);
 if (status <= 0)
  return status;

 ev = &decoder->event;
 switch (ev->type) {
 case 143:
 case 138:
 case 147:
 case 146:
 case 148:
 case 149:
 case 142:
 case 131:
 case 133:
 case 141:
 case 139:
 case 135:
 case 134:
 case 132:
 case 145:
 case 140:

  return 0;

 case 144:
  status = pt_insn_at_disabled_event(ev, insn, iext,
         &decoder->query.config);
  if (status <= 0)
   return status;





  status = pt_insn_next_ip(&decoder->ip, insn, iext);
  if (status < 0) {

   decoder->ip = 0ull;
   if (status != -pte_bad_query)
    return status;

   switch (insn->iclass) {
   case 129:
   case 128:
    decoder->ip = insn->ip + insn->size;
    break;

   default:
    break;
   }
  }

  break;

 case 137:

  if (decoder->bound_paging)
   return 0;

  if (!pt_insn_binds_to_pip(insn, iext))
   return 0;




  decoder->bound_paging = 1;

  return pt_insn_postpone(decoder, insn, iext);

 case 130:

  if (decoder->bound_vmcs)
   return 0;

  if (!pt_insn_binds_to_vmcs(insn, iext))
   return 0;




  decoder->bound_vmcs = 1;

  return pt_insn_postpone(decoder, insn, iext);

 case 136:

  if (decoder->bound_ptwrite)
   return 0;

  if (ev->ip_suppressed) {
   if (!pt_insn_is_ptwrite(insn, iext))
    return 0;




   ev->variant.ptwrite.ip = decoder->ip;
   ev->ip_suppressed = 0;
  } else {







   if (decoder->ip != ev->variant.ptwrite.ip)
    return 0;
  }




  decoder->bound_ptwrite = 1;

  return pt_insn_postpone(decoder, insn, iext);
 }

 return pt_insn_status(decoder, pts_event_pending);
}
