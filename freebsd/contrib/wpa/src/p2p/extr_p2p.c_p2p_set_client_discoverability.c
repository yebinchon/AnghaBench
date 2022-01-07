
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct p2p_data {int dev_capab; } ;


 int P2P_DEV_CAPAB_CLIENT_DISCOVERABILITY ;
 int p2p_dbg (struct p2p_data*,char*) ;

void p2p_set_client_discoverability(struct p2p_data *p2p, int enabled)
{
 if (enabled) {
  p2p_dbg(p2p, "Client discoverability enabled");
  p2p->dev_capab |= P2P_DEV_CAPAB_CLIENT_DISCOVERABILITY;
 } else {
  p2p_dbg(p2p, "Client discoverability disabled");
  p2p->dev_capab &= ~P2P_DEV_CAPAB_CLIENT_DISCOVERABILITY;
 }
}
