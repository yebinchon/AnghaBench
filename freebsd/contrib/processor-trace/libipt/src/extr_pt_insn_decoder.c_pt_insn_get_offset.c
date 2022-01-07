
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct pt_insn_decoder {int query; } ;


 int pt_qry_get_offset (int *,int *) ;
 int pte_invalid ;

int pt_insn_get_offset(const struct pt_insn_decoder *decoder, uint64_t *offset)
{
 if (!decoder)
  return -pte_invalid;

 return pt_qry_get_offset(&decoder->query, offset);
}
