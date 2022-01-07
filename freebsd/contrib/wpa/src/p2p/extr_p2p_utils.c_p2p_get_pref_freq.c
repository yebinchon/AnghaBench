
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct p2p_data {TYPE_2__* cfg; } ;
struct p2p_channels {int dummy; } ;
struct TYPE_4__ {unsigned int num_pref_chan; TYPE_1__* pref_chan; struct p2p_channels const channels; } ;
struct TYPE_3__ {int chan; int op_class; } ;


 int p2p_channel_to_freq (int ,int ) ;
 scalar_t__ p2p_channels_includes_freq (struct p2p_channels const*,int) ;

unsigned int p2p_get_pref_freq(struct p2p_data *p2p,
          const struct p2p_channels *channels)
{
 unsigned int i;
 int freq = 0;
 const struct p2p_channels *tmpc = channels ?
  channels : &p2p->cfg->channels;

 if (tmpc == ((void*)0))
  return 0;

 for (i = 0; p2p->cfg->pref_chan && i < p2p->cfg->num_pref_chan; i++) {
  freq = p2p_channel_to_freq(p2p->cfg->pref_chan[i].op_class,
        p2p->cfg->pref_chan[i].chan);
  if (p2p_channels_includes_freq(tmpc, freq))
   return freq;
 }
 return 0;
}
