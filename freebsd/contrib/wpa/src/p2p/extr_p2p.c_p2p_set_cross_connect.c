
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct p2p_data {int cross_connect; } ;


 int p2p_dbg (struct p2p_data*,char*,char*) ;

void p2p_set_cross_connect(struct p2p_data *p2p, int enabled)
{
 p2p_dbg(p2p, "Cross connection %s", enabled ? "enabled" : "disabled");
 if (p2p->cross_connect == enabled)
  return;
 p2p->cross_connect = enabled;

}
