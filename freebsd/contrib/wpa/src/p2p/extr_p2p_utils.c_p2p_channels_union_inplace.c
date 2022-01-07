
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct p2p_reg_class {scalar_t__ reg_class; } ;
struct p2p_channels {size_t reg_classes; struct p2p_reg_class* reg_class; } ;


 size_t P2P_MAX_REG_CLASSES ;
 int os_memcpy (struct p2p_reg_class*,struct p2p_reg_class const*,int) ;
 int p2p_op_class_union (struct p2p_reg_class*,struct p2p_reg_class const*) ;

void p2p_channels_union_inplace(struct p2p_channels *res,
    const struct p2p_channels *b)
{
 size_t i, j;

 for (i = 0; i < res->reg_classes; i++) {
  struct p2p_reg_class *cl = &res->reg_class[i];
  for (j = 0; j < b->reg_classes; j++) {
   const struct p2p_reg_class *b_cl = &b->reg_class[j];
   if (cl->reg_class != b_cl->reg_class)
    continue;
   p2p_op_class_union(cl, b_cl);
  }
 }

 for (j = 0; j < b->reg_classes; j++) {
  const struct p2p_reg_class *b_cl = &b->reg_class[j];

  for (i = 0; i < res->reg_classes; i++) {
   struct p2p_reg_class *cl = &res->reg_class[i];
   if (cl->reg_class == b_cl->reg_class)
    break;
  }

  if (i == res->reg_classes) {
   if (res->reg_classes == P2P_MAX_REG_CLASSES)
    return;
   os_memcpy(&res->reg_class[res->reg_classes++],
      b_cl, sizeof(struct p2p_reg_class));
  }
 }
}
