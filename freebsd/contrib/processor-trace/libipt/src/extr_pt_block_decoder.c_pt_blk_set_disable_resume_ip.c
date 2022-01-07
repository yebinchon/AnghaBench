
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_insn {int iclass; unsigned long long ip; unsigned long long size; } ;
struct pt_block_decoder {unsigned long long ip; } ;


 int pte_internal ;



__attribute__((used)) static int pt_blk_set_disable_resume_ip(struct pt_block_decoder *decoder,
     const struct pt_insn *insn)
{
 if (!decoder || !insn)
  return -pte_internal;

 switch (insn->iclass) {
 case 129:
 case 128:
  decoder->ip = insn->ip + insn->size;
  break;

 default:
  decoder->ip = 0ull;
  break;
 }

 return 0;
}
