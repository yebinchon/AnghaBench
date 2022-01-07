
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
struct pt_mapped_section {int dummy; } ;
struct pt_insn_ext {int dummy; } ;
struct pt_insn_decoder {int asid; int image; } ;
struct pt_insn {scalar_t__ size; int ip; int raw; } ;


 int pt_ild_decode (struct pt_insn*,struct pt_insn_ext*) ;
 int pt_insn_decode (struct pt_insn*,struct pt_insn_ext*,int ,int *) ;
 int pt_msec_read (struct pt_mapped_section const*,int ,int,int ) ;
 int pte_bad_insn ;
 int pte_internal ;
 int pte_nomap ;

__attribute__((used)) static int pt_insn_decode_cached(struct pt_insn_decoder *decoder,
     const struct pt_mapped_section *msec,
     struct pt_insn *insn, struct pt_insn_ext *iext)
{
 int status;

 if (!decoder || !insn || !iext)
  return -pte_internal;
 if (!msec)
  return pt_insn_decode(insn, iext, decoder->image,
          &decoder->asid);

 status = pt_msec_read(msec, insn->raw, sizeof(insn->raw), insn->ip);
 if (status < 0) {
  if (status != -pte_nomap)
   return status;

  return pt_insn_decode(insn, iext, decoder->image,
          &decoder->asid);
 }




 insn->size = (uint8_t) status;

 status = pt_ild_decode(insn, iext);
 if (status < 0) {
  if (status != -pte_bad_insn)
   return status;

  return pt_insn_decode(insn, iext, decoder->image,
          &decoder->asid);
 }

 return status;
}
