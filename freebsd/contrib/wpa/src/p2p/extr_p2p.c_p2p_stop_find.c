
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct p2p_data {scalar_t__ pending_listen_freq; } ;


 int p2p_stop_find_for_freq (struct p2p_data*,int ) ;

void p2p_stop_find(struct p2p_data *p2p)
{
 p2p->pending_listen_freq = 0;
 p2p_stop_find_for_freq(p2p, 0);
}
