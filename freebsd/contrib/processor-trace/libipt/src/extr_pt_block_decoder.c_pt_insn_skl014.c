
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int is_direct; } ;
struct TYPE_4__ {TYPE_1__ branch; } ;
struct pt_insn_ext {TYPE_2__ variant; } ;
struct pt_insn {int iclass; } ;


 int pt_insn_changes_cr3 (struct pt_insn const*,struct pt_insn_ext const*) ;




__attribute__((used)) static int pt_insn_skl014(const struct pt_insn *insn,
     const struct pt_insn_ext *iext)
{
 if (!insn || !iext)
  return 0;

 switch (insn->iclass) {
 default:
  return 0;

 case 130:
 case 129:
  return iext->variant.branch.is_direct;

 case 128:
  return pt_insn_changes_cr3(insn, iext);
 }
}
