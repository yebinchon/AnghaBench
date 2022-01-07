
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct p2p_data {int dummy; } ;


 int p2p_dbg (struct p2p_data*,char*) ;
 int p2p_go_neg_failed (struct p2p_data*,int) ;

void p2p_go_neg_wait_timeout(void *eloop_ctx, void *timeout_ctx)
{
 struct p2p_data *p2p = eloop_ctx;

 p2p_dbg(p2p,
  "Timeout on waiting peer to become ready for GO Negotiation");
 p2p_go_neg_failed(p2p, -1);
}
