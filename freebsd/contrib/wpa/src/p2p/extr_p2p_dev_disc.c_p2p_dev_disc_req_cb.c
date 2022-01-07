
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct p2p_data {int dummy; } ;


 int P2P_CONNECT ;
 int p2p_dbg (struct p2p_data*,char*,...) ;
 int p2p_set_state (struct p2p_data*,int ) ;
 int p2p_set_timeout (struct p2p_data*,int ,int) ;

void p2p_dev_disc_req_cb(struct p2p_data *p2p, int success)
{
 p2p_dbg(p2p, "Device Discoverability Request TX callback: success=%d",
  success);

 if (!success) {




  p2p_set_state(p2p, P2P_CONNECT);
  p2p_set_timeout(p2p, 0, 100000);
  return;
 }

 p2p_dbg(p2p, "GO acknowledged Device Discoverability Request - wait for response");





}
