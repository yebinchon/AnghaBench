
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct p2p_data {int dev_capab; } ;


 int P2P_DEV_CAPAB_INFRA_MANAGED ;
 int p2p_dbg (struct p2p_data*,char*) ;

void p2p_set_managed_oper(struct p2p_data *p2p, int enabled)
{
 if (enabled) {
  p2p_dbg(p2p, "Managed P2P Device operations enabled");
  p2p->dev_capab |= P2P_DEV_CAPAB_INFRA_MANAGED;
 } else {
  p2p_dbg(p2p, "Managed P2P Device operations disabled");
  p2p->dev_capab &= ~P2P_DEV_CAPAB_INFRA_MANAGED;
 }
}
