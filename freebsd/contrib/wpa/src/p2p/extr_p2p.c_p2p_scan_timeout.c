
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct p2p_data {int p2p_scan_running; } ;


 int p2p_dbg (struct p2p_data*,char*,int) ;
 int p2p_run_after_scan (struct p2p_data*) ;

__attribute__((used)) static void p2p_scan_timeout(void *eloop_ctx, void *timeout_ctx)
{
 struct p2p_data *p2p = eloop_ctx;
 int running;
 p2p_dbg(p2p, "p2p_scan timeout (running=%d)", p2p->p2p_scan_running);
 running = p2p->p2p_scan_running;

 p2p->p2p_scan_running = 0;

 if (running)
  p2p_run_after_scan(p2p);
}
