
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct p2p_reg_class {size_t channels; scalar_t__* channel; } ;


 size_t P2P_MAX_REG_CLASS_CHANNELS ;

__attribute__((used)) static void p2p_op_class_union(struct p2p_reg_class *cl,
          const struct p2p_reg_class *b_cl)
{
 size_t i, j;

 for (i = 0; i < b_cl->channels; i++) {
  for (j = 0; j < cl->channels; j++) {
   if (b_cl->channel[i] == cl->channel[j])
    break;
  }
  if (j == cl->channels) {
   if (cl->channels == P2P_MAX_REG_CLASS_CHANNELS)
    return;
   cl->channel[cl->channels++] = b_cl->channel[i];
  }
 }
}
