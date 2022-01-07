
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_insn_ext {int dummy; } ;
struct pt_insn {int iclass; } ;






int pt_insn_is_far_branch(const struct pt_insn *insn,
     const struct pt_insn_ext *iext)
{
 (void) iext;

 if (!insn)
  return 0;

 switch (insn->iclass) {
 default:
  return 0;

 case 130:
 case 128:
 case 129:
  return 1;
 }
}
