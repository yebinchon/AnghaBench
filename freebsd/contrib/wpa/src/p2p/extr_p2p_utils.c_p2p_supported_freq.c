
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct p2p_data {TYPE_1__* cfg; } ;
struct TYPE_2__ {int channels; } ;


 int p2p_channels_includes (int *,int ,int ) ;
 scalar_t__ p2p_freq_to_channel (unsigned int,int *,int *) ;

int p2p_supported_freq(struct p2p_data *p2p, unsigned int freq)
{
 u8 op_reg_class, op_channel;
 if (p2p_freq_to_channel(freq, &op_reg_class, &op_channel) < 0)
  return 0;
 return p2p_channels_includes(&p2p->cfg->channels, op_reg_class,
         op_channel);
}
