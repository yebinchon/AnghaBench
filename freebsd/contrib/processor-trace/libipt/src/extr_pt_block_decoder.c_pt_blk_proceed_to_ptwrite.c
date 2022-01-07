
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pt_insn_ext {int dummy; } ;
struct pt_insn {int ip; } ;
struct TYPE_3__ {int ip; } ;
struct TYPE_4__ {TYPE_1__ ptwrite; } ;
struct pt_event {TYPE_2__ variant; scalar_t__ ip_suppressed; } ;
struct pt_block_decoder {int dummy; } ;
struct pt_block {int dummy; } ;


 int pt_blk_proceed_one_insn (struct pt_block_decoder*,struct pt_block*,struct pt_insn*,struct pt_insn_ext*) ;
 int pt_blk_proceed_to_insn (struct pt_block_decoder*,struct pt_block*,struct pt_insn*,struct pt_insn_ext*,int ) ;
 int pt_blk_proceed_to_ip (struct pt_block_decoder*,struct pt_block*,struct pt_insn*,struct pt_insn_ext*,int ) ;
 int pt_insn_is_ptwrite ;
 int pte_internal ;

__attribute__((used)) static int pt_blk_proceed_to_ptwrite(struct pt_block_decoder *decoder,
         struct pt_block *block,
         struct pt_insn *insn,
         struct pt_insn_ext *iext,
         struct pt_event *ev)
{
 int status;

 if (!insn || !ev)
  return -pte_internal;
 if (ev->ip_suppressed) {
  status = pt_blk_proceed_to_insn(decoder, block, insn, iext,
      pt_insn_is_ptwrite);
  if (status <= 0)
   return status;





  ev->variant.ptwrite.ip = insn->ip;
  ev->ip_suppressed = 0;
 } else {
  status = pt_blk_proceed_to_ip(decoder, block, insn, iext,
           ev->variant.ptwrite.ip);
  if (status <= 0)
   return status;
  status = pt_blk_proceed_one_insn(decoder, block, insn, iext);
  if (status <= 0)
   return status;
 }

 return 1;
}
