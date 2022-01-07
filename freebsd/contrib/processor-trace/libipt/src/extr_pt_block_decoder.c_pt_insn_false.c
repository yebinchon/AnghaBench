
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_insn_ext {int dummy; } ;
struct pt_insn {int dummy; } ;



__attribute__((used)) static int pt_insn_false(const struct pt_insn *insn,
    const struct pt_insn_ext *iext)
{
 (void) insn;
 (void) iext;

 return 0;
}
