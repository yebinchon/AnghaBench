
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_insn_decoder {int iext; int insn; int enabled; int process_insn; } ;


 int pt_insn_clear_postponed (struct pt_insn_decoder*) ;
 int pt_insn_proceed (struct pt_insn_decoder*,int *,int *) ;
 int pte_internal ;

__attribute__((used)) static int pt_insn_proceed_postponed(struct pt_insn_decoder *decoder)
{
 int status;

 if (!decoder)
  return -pte_internal;

 if (!decoder->process_insn)
  return -pte_internal;


 if (!decoder->enabled)
  return pt_insn_clear_postponed(decoder);

 status = pt_insn_proceed(decoder, &decoder->insn, &decoder->iext);
 if (status < 0)
  return status;

 return pt_insn_clear_postponed(decoder);
}
