
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_insn_ext {int iclass; } ;
struct pt_insn_decoder {int asid; int image; int ip; int mode; } ;
struct pt_insn {int ip; int mode; } ;




 int pt_insn_decode (struct pt_insn*,struct pt_insn_ext*,int ,int *) ;
 int pte_internal ;

__attribute__((used)) static int check_erratum_skd022(struct pt_insn_decoder *decoder)
{
 struct pt_insn_ext iext;
 struct pt_insn insn;
 int errcode;

 if (!decoder)
  return -pte_internal;

 insn.mode = decoder->mode;
 insn.ip = decoder->ip;

 errcode = pt_insn_decode(&insn, &iext, decoder->image, &decoder->asid);
 if (errcode < 0)
  return 0;

 switch (iext.iclass) {
 default:
  return 0;

 case 129:
 case 128:
  return 1;
 }
}
