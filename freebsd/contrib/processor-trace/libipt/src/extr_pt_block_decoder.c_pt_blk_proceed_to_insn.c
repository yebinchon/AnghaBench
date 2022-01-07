
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef struct pt_insn_ext const pt_insn_ext ;
typedef struct pt_insn {scalar_t__ iclass; } const pt_insn ;
struct TYPE_4__ {scalar_t__ end_on_jump; scalar_t__ end_on_call; } ;
struct TYPE_5__ {TYPE_1__ block; } ;
struct TYPE_6__ {TYPE_2__ variant; } ;
struct pt_block_decoder {TYPE_3__ flags; int ip; } ;
struct pt_block {int dummy; } ;


 int pt_blk_proceed_one_insn (struct pt_block_decoder*,struct pt_block*,struct pt_insn const*,struct pt_insn_ext const*) ;
 int pt_insn_next_ip (int *,struct pt_insn const*,struct pt_insn_ext const*) ;
 int pte_internal ;
 scalar_t__ ptic_call ;
 scalar_t__ ptic_jump ;

__attribute__((used)) static int pt_blk_proceed_to_insn(struct pt_block_decoder *decoder,
      struct pt_block *block,
      struct pt_insn *insn,
      struct pt_insn_ext *iext,
      int (*predicate)(const struct pt_insn *,
         const struct pt_insn_ext *))
{
 int status;

 if (!decoder || !insn || !predicate)
  return -pte_internal;

 for (;;) {
  status = pt_blk_proceed_one_insn(decoder, block, insn, iext);
  if (status <= 0)
   return status;




  status = predicate(insn, iext);
  if (status != 0)
   return status;


  status = pt_insn_next_ip(&decoder->ip, insn, iext);
  if (status < 0)
   return status;







  if ((decoder->flags.variant.block.end_on_call &&
       (insn->iclass == ptic_call)) ||
      (decoder->flags.variant.block.end_on_jump &&
       (insn->iclass == ptic_jump)))
   return 0;
 }
}
