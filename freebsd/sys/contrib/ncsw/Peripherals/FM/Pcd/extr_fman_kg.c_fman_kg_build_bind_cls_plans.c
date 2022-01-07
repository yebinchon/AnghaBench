
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint32_t ;


 int EINVAL ;
 int FMAN_KG_PE_CPP_MASK_SHIFT ;

int fman_kg_build_bind_cls_plans(uint8_t grp_base,
     uint8_t grp_mask,
     uint32_t *bind_cls_plans)
{

 if ((grp_base & ~0x0000001F) || (grp_mask & ~0x0000001F))
  return -EINVAL;

 *bind_cls_plans = (uint32_t) ((grp_mask << FMAN_KG_PE_CPP_MASK_SHIFT) | grp_base);
 return 0;
}
