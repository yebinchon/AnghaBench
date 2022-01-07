
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_block_decoder {scalar_t__ bound_ptwrite; scalar_t__ bound_vmcs; scalar_t__ bound_paging; scalar_t__ process_insn; } ;


 int pte_internal ;

__attribute__((used)) static int pt_blk_clear_postponed_insn(struct pt_block_decoder *decoder)
{
 if (!decoder)
  return -pte_internal;

 decoder->process_insn = 0;
 decoder->bound_paging = 0;
 decoder->bound_vmcs = 0;
 decoder->bound_ptwrite = 0;

 return 0;
}
