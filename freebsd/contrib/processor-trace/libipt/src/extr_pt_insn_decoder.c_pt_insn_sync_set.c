
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct pt_insn_decoder {int ip; int query; } ;


 int pt_insn_reset (struct pt_insn_decoder*) ;
 int pt_insn_start (struct pt_insn_decoder*,int) ;
 int pt_qry_sync_set (int *,int *,int ) ;
 int pte_invalid ;

int pt_insn_sync_set(struct pt_insn_decoder *decoder, uint64_t offset)
{
 int status;

 if (!decoder)
  return -pte_invalid;

 pt_insn_reset(decoder);

 status = pt_qry_sync_set(&decoder->query, &decoder->ip, offset);

 return pt_insn_start(decoder, status);
}
