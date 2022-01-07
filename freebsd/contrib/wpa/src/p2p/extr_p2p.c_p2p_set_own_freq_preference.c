
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct p2p_data {int own_freq_preference; } ;


 int p2p_dbg (struct p2p_data*,char*,int) ;

void p2p_set_own_freq_preference(struct p2p_data *p2p, int freq)
{
 p2p_dbg(p2p, "Own frequency preference: %d MHz", freq);
 p2p->own_freq_preference = freq;
}
