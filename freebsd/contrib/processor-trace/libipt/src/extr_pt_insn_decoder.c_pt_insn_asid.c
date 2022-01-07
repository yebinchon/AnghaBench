
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_insn_decoder {int asid; } ;
struct pt_asid {int dummy; } ;


 int pt_asid_to_user (struct pt_asid*,int *,size_t) ;
 int pte_invalid ;

int pt_insn_asid(const struct pt_insn_decoder *decoder, struct pt_asid *asid,
   size_t size)
{
 if (!decoder || !asid)
  return -pte_invalid;

 return pt_asid_to_user(asid, &decoder->asid, size);
}
