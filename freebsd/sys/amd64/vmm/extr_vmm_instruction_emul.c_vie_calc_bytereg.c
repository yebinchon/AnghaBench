
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vie {size_t reg; int rex_present; } ;
typedef enum vm_reg_name { ____Placeholder_vm_reg_name } vm_reg_name ;


 int* gpr_map ;

__attribute__((used)) static void
vie_calc_bytereg(struct vie *vie, enum vm_reg_name *reg, int *lhbr)
{
 *lhbr = 0;
 *reg = gpr_map[vie->reg];
 if (!vie->rex_present) {
  if (vie->reg & 0x4) {
   *lhbr = 1;
   *reg = gpr_map[vie->reg & 0x3];
  }
 }
}
