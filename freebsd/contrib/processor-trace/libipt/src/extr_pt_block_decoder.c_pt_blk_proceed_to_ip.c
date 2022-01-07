
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct pt_insn_ext {int dummy; } ;
struct pt_insn {scalar_t__ iclass; } ;
struct TYPE_4__ {scalar_t__ end_on_jump; scalar_t__ end_on_call; } ;
struct TYPE_5__ {TYPE_1__ block; } ;
struct TYPE_6__ {TYPE_2__ variant; } ;
struct pt_block_decoder {scalar_t__ ip; TYPE_3__ flags; } ;
struct pt_block {int dummy; } ;


 int pt_blk_proceed_one_insn (struct pt_block_decoder*,struct pt_block*,struct pt_insn*,struct pt_insn_ext*) ;
 int pt_insn_next_ip (scalar_t__*,struct pt_insn*,struct pt_insn_ext*) ;
 int pte_internal ;
 scalar_t__ ptic_call ;
 scalar_t__ ptic_jump ;

__attribute__((used)) static int pt_blk_proceed_to_ip(struct pt_block_decoder *decoder,
    struct pt_block *block, struct pt_insn *insn,
    struct pt_insn_ext *iext, uint64_t ip)
{
 int status;

 if (!decoder || !insn)
  return -pte_internal;

 for (;;) {



  if (decoder->ip == ip)
   return 1;

  status = pt_blk_proceed_one_insn(decoder, block, insn, iext);
  if (status <= 0)
   return status;


  status = pt_insn_next_ip(&decoder->ip, insn, iext);
  if (status < 0)
   return status;
  if ((decoder->flags.variant.block.end_on_call &&
       (insn->iclass == ptic_call)) ||
      (decoder->flags.variant.block.end_on_jump &&
       (insn->iclass == ptic_jump))) {
   return (decoder->ip == ip ? 1 : 0);
  }
 }
}
