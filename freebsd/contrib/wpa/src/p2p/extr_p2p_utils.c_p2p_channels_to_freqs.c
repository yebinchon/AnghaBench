
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct p2p_reg_class {unsigned int channels; int * channel; int reg_class; } ;
struct p2p_channels {unsigned int reg_classes; struct p2p_reg_class* reg_class; } ;


 int p2p_channel_to_freq (int ,int ) ;

int p2p_channels_to_freqs(const struct p2p_channels *channels, int *freq_list,
     unsigned int max_len)
{
 unsigned int i, idx;

 if (!channels || max_len == 0)
  return 0;

 for (i = 0, idx = 0; i < channels->reg_classes; i++) {
  const struct p2p_reg_class *c = &channels->reg_class[i];
  unsigned int j;

  if (idx + 1 == max_len)
   break;
  for (j = 0; j < c->channels; j++) {
   int freq;
   unsigned int k;

   if (idx + 1 == max_len)
    break;
   freq = p2p_channel_to_freq(c->reg_class,
         c->channel[j]);
   if (freq < 0)
    continue;

   for (k = 0; k < idx; k++) {
    if (freq_list[k] == freq)
     break;
   }

   if (k < idx)
    continue;
   freq_list[idx++] = freq;
  }
 }

 freq_list[idx] = 0;

 return idx;
}
