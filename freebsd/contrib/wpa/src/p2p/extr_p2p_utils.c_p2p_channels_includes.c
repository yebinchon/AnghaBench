
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct p2p_reg_class {scalar_t__ reg_class; size_t channels; scalar_t__* channel; } ;
struct p2p_channels {size_t reg_classes; struct p2p_reg_class* reg_class; } ;



int p2p_channels_includes(const struct p2p_channels *channels, u8 reg_class,
     u8 channel)
{
 size_t i, j;
 for (i = 0; i < channels->reg_classes; i++) {
  const struct p2p_reg_class *reg = &channels->reg_class[i];
  if (reg->reg_class != reg_class)
   continue;
  for (j = 0; j < reg->channels; j++) {
   if (reg->channel[j] == channel)
    return 1;
  }
 }
 return 0;
}
