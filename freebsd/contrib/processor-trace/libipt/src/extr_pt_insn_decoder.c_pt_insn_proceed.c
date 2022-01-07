
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_3__ {scalar_t__ displacement; scalar_t__ is_direct; } ;
struct TYPE_4__ {TYPE_1__ branch; } ;
struct pt_insn_ext {TYPE_2__ variant; } ;
struct pt_insn_decoder {int status; int ip; int retstack; } ;
struct pt_insn {int iclass; scalar_t__ size; } ;
typedef scalar_t__ int64_t ;


 int pt_insn_cond_branch (struct pt_insn_decoder*,int*) ;
 int pt_insn_indirect_branch (struct pt_insn_decoder*,int *) ;
 int pt_retstack_pop (int *,int *) ;
 int pt_retstack_push (int *,int ) ;
 int pte_bad_insn ;
 int pte_bad_retcomp ;
 int pte_internal ;
 int pte_noip ;
 int pts_ip_suppressed ;

__attribute__((used)) static int pt_insn_proceed(struct pt_insn_decoder *decoder,
      const struct pt_insn *insn,
      const struct pt_insn_ext *iext)
{
 if (!decoder || !insn || !iext)
  return -pte_internal;


 decoder->ip += insn->size;







 switch (insn->iclass) {
 case 129:
 case 130:
  return 0;

 case 136: {
  int status, taken;

  status = pt_insn_cond_branch(decoder, &taken);
  if (status < 0)
   return status;

  decoder->status = status;
  if (!taken)
   return 0;

  break;
 }

 case 137:





  if (iext->variant.branch.displacement ||
      !iext->variant.branch.is_direct)
   pt_retstack_push(&decoder->retstack, decoder->ip);

  break;

 case 128: {
  int taken, status;


  status = pt_insn_cond_branch(decoder, &taken);
  if (status >= 0) {
   decoder->status = status;




   if (!taken)
    return -pte_bad_retcomp;

   return pt_retstack_pop(&decoder->retstack,
            &decoder->ip);
  }

  break;
 }

 case 131:
 case 134:
 case 132:
 case 133:
  break;

 case 135:
  return -pte_bad_insn;
 }






 if (iext->variant.branch.is_direct)
  decoder->ip += (uint64_t) (int64_t)
   iext->variant.branch.displacement;
 else {
  int status;

  status = pt_insn_indirect_branch(decoder, &decoder->ip);

  if (status < 0)
   return status;

  decoder->status = status;


  if (status & pts_ip_suppressed)
   return -pte_noip;
 }

 return 0;
}
