
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_insn_decoder {int ip; int query; } ;


 int pt_insn_reset (struct pt_insn_decoder*) ;
 int pt_insn_start (struct pt_insn_decoder*,int) ;
 int pt_qry_sync_forward (int *,int *) ;
 int pte_invalid ;

int pt_insn_sync_forward(struct pt_insn_decoder *decoder)
{
 int status;

 if (!decoder)
  return -pte_invalid;

 pt_insn_reset(decoder);

 status = pt_qry_sync_forward(&decoder->query, &decoder->ip);

 return pt_insn_start(decoder, status);
}
