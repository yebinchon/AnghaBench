
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_block_decoder {int iext; int insn; int ip; int enabled; int process_insn; } ;


 int pt_blk_clear_postponed_insn (struct pt_block_decoder*) ;
 int pt_blk_proceed_with_trace (struct pt_block_decoder*,int *,int *) ;
 int pt_insn_next_ip (int *,int *,int *) ;
 int pte_bad_query ;
 int pte_internal ;

__attribute__((used)) static int pt_blk_proceed_postponed_insn(struct pt_block_decoder *decoder)
{
 int status;

 if (!decoder)
  return -pte_internal;


 if (!decoder->process_insn)
  return 0;


 if (!decoder->enabled)
  return pt_blk_clear_postponed_insn(decoder);

 status = pt_insn_next_ip(&decoder->ip, &decoder->insn, &decoder->iext);
 if (status < 0) {
  if (status != -pte_bad_query)
   return status;

  status = pt_blk_proceed_with_trace(decoder, &decoder->insn,
         &decoder->iext);
  if (status < 0)
   return status;
 }

 return pt_blk_clear_postponed_insn(decoder);
}
