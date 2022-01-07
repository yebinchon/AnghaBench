
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_insn_decoder {int dummy; } ;


 int free (struct pt_insn_decoder*) ;
 int pt_insn_decoder_fini (struct pt_insn_decoder*) ;

void pt_insn_free_decoder(struct pt_insn_decoder *decoder)
{
 if (!decoder)
  return;

 pt_insn_decoder_fini(decoder);
 free(decoder);
}
