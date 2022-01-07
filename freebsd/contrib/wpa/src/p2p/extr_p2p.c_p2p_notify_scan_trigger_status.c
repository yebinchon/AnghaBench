
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct p2p_data {int p2p_scan_running; } ;


 int P2P_SCAN_TIMEOUT ;
 int eloop_cancel_timeout (int ,struct p2p_data*,int *) ;
 int eloop_register_timeout (int ,int ,int ,struct p2p_data*,int *) ;
 int p2p_continue_find (struct p2p_data*) ;
 int p2p_dbg (struct p2p_data*,char*) ;
 int p2p_scan_timeout ;

void p2p_notify_scan_trigger_status(struct p2p_data *p2p, int status)
{
 if (status != 0) {
  p2p_dbg(p2p, "Scan request failed");

  p2p_continue_find(p2p);
 } else {
  p2p_dbg(p2p, "Running p2p_scan");
  p2p->p2p_scan_running = 1;
  eloop_cancel_timeout(p2p_scan_timeout, p2p, ((void*)0));
  eloop_register_timeout(P2P_SCAN_TIMEOUT, 0, p2p_scan_timeout,
           p2p, ((void*)0));
 }
}
