
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_3__ {int is_direct; int displacement; } ;
struct TYPE_4__ {TYPE_1__ branch; } ;
struct pt_insn_ext {TYPE_2__ variant; } ;
struct pt_insn {int iclass; scalar_t__ size; scalar_t__ ip; } ;
struct pt_block_decoder {int retstack; } ;
typedef int int64_t ;


 int pt_blk_cond_branch (struct pt_block_decoder*,int*) ;
 int pt_blk_indirect_branch (struct pt_block_decoder*,scalar_t__*) ;
 int pt_retstack_pop (int *,scalar_t__*) ;
 int pte_bad_insn ;
 int pte_bad_query ;
 int pte_bad_retcomp ;
 int pte_internal ;
__attribute__((used)) static int pt_blk_next_ip(uint64_t *pip, struct pt_block_decoder *decoder,
     const struct pt_insn *insn,
     const struct pt_insn_ext *iext)
{
 int status, errcode;

 if (!pip || !decoder || !insn || !iext)
  return -pte_internal;






 switch (insn->iclass) {
 case 136: {
  uint64_t ip;
  int taken;

  status = pt_blk_cond_branch(decoder, &taken);
  if (status < 0)
   return status;

  ip = insn->ip + insn->size;
  if (taken)
   ip += (uint64_t) (int64_t)
    iext->variant.branch.displacement;

  *pip = ip;
  return status;
 }

 case 128: {
  int taken;


  status = pt_blk_cond_branch(decoder, &taken);
  if (status < 0) {
   if (status != -pte_bad_query)
    return status;

   break;
  }




  if (!taken)
   return -pte_bad_retcomp;

  errcode = pt_retstack_pop(&decoder->retstack, pip);
  if (errcode < 0)
   return errcode;

  return status;
 }

 case 131:
 case 137:

  if (iext->variant.branch.is_direct)
   return -pte_internal;

  break;

 case 134:
 case 132:
 case 133:
  break;

 case 129:
 case 130:
  return -pte_internal;

 case 135:
  return -pte_bad_insn;
 }






 return pt_blk_indirect_branch(decoder, pip);
}
