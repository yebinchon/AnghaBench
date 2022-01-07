
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct p2p_reg_class {scalar_t__ reg_class; scalar_t__ channels; } ;
struct p2p_channels {size_t reg_classes; struct p2p_reg_class* reg_class; } ;


 size_t P2P_MAX_REG_CLASSES ;
 int os_memset (struct p2p_channels*,int ,int) ;
 int p2p_reg_class_intersect (struct p2p_reg_class const*,struct p2p_reg_class const*,struct p2p_reg_class*) ;

void p2p_channels_intersect(const struct p2p_channels *a,
       const struct p2p_channels *b,
       struct p2p_channels *res)
{
 size_t i, j;

 os_memset(res, 0, sizeof(*res));

 for (i = 0; i < a->reg_classes; i++) {
  const struct p2p_reg_class *a_reg = &a->reg_class[i];
  for (j = 0; j < b->reg_classes; j++) {
   const struct p2p_reg_class *b_reg = &b->reg_class[j];
   if (a_reg->reg_class != b_reg->reg_class)
    continue;
   p2p_reg_class_intersect(
    a_reg, b_reg,
    &res->reg_class[res->reg_classes]);
   if (res->reg_class[res->reg_classes].channels) {
    res->reg_classes++;
    if (res->reg_classes == P2P_MAX_REG_CLASSES)
     return;
   }
  }
 }
}
