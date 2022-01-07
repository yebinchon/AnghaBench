
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int displacement; scalar_t__ is_direct; } ;
struct TYPE_4__ {TYPE_1__ branch; } ;
struct pt_insn_ext {TYPE_2__ variant; } ;
struct pt_insn {scalar_t__ iclass; scalar_t__ size; scalar_t__ ip; } ;
struct pt_block_decoder {int retstack; } ;


 int pt_retstack_push (int *,scalar_t__) ;
 int pte_internal ;
 scalar_t__ ptic_call ;

__attribute__((used)) static inline int pt_blk_log_call(struct pt_block_decoder *decoder,
      const struct pt_insn *insn,
      const struct pt_insn_ext *iext)
{
 if (!decoder || !insn || !iext)
  return -pte_internal;

 if (insn->iclass != ptic_call)
  return 0;




 if (iext->variant.branch.is_direct &&
     !iext->variant.branch.displacement)
  return 0;

 return pt_retstack_push(&decoder->retstack, insn->ip + insn->size);
}
