
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_insn_ext {int iclass; } ;
struct pt_insn {int dummy; } ;




int pt_insn_changes_cr3(const struct pt_insn *insn,
   const struct pt_insn_ext *iext)
{
 (void) insn;

 if (!iext)
  return 0;

 switch (iext->iclass) {
 default:
  return 0;

 case 128:
  return 1;
 }
}
