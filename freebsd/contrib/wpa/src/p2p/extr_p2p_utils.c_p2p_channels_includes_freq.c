
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct p2p_reg_class {size_t channels; int * channel; int reg_class; } ;
struct p2p_channels {size_t reg_classes; struct p2p_reg_class* reg_class; } ;


 int p2p_channel_to_freq (int ,int ) ;

int p2p_channels_includes_freq(const struct p2p_channels *channels,
          unsigned int freq)
{
 size_t i, j;
 for (i = 0; i < channels->reg_classes; i++) {
  const struct p2p_reg_class *reg = &channels->reg_class[i];
  for (j = 0; j < reg->channels; j++) {
   if (p2p_channel_to_freq(reg->reg_class,
      reg->channel[j]) == (int) freq)
    return 1;
  }
 }
 return 0;
}
