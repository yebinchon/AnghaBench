
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_insn_ext {int iclass; } ;
struct pt_insn {int dummy; } ;





 int pt_insn_is_far_branch (struct pt_insn const*,struct pt_insn_ext const*) ;

int pt_insn_binds_to_pip(const struct pt_insn *insn,
    const struct pt_insn_ext *iext)
{
 if (!iext)
  return 0;

 switch (iext->iclass) {
 default:
  return pt_insn_is_far_branch(insn, iext);

 case 130:
 case 129:
 case 128:
  return 1;
 }
}
