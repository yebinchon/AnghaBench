
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct p2p_data {int best_freq_24; int best_freq_5; int best_freq_overall; } ;


 int p2p_dbg (struct p2p_data*,char*,int,int,int) ;

void p2p_set_best_channels(struct p2p_data *p2p, int freq_24, int freq_5,
      int freq_overall)
{
 p2p_dbg(p2p, "Best channel: 2.4 GHz: %d,  5 GHz: %d,  overall: %d",
  freq_24, freq_5, freq_overall);
 p2p->best_freq_24 = freq_24;
 p2p->best_freq_5 = freq_5;
 p2p->best_freq_overall = freq_overall;
}
