
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct fman_kg_cp_regs {int * kgcpe; } ;
struct fman_kg_cls_plan_params {int entries_mask; int * mask_vector; } ;


 int memset (struct fman_kg_cp_regs*,int ,int) ;

int fman_kg_build_cls_plan(struct fman_kg_cls_plan_params *params,
    struct fman_kg_cp_regs *cls_plan_regs)
{
 uint8_t entries_set, entry_bit;
 int i;


 memset(cls_plan_regs, 0, sizeof(struct fman_kg_cp_regs));



 entries_set = params->entries_mask;
 for (i = 0; entries_set; i++) {
  entry_bit = (uint8_t)(0x80 >> i);
  if ((entry_bit & entries_set) == 0)
   continue;
  entries_set ^= entry_bit;
  cls_plan_regs->kgcpe[i] = params->mask_vector[i];
 }

 return 0;
}
