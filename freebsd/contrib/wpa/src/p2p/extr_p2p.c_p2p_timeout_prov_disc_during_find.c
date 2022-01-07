
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct p2p_data {TYPE_1__* cfg; } ;
struct TYPE_2__ {int cb_ctx; int (* send_action_done ) (int ) ;} ;


 int p2p_continue_find (struct p2p_data*) ;
 int p2p_dbg (struct p2p_data*,char*) ;
 int stub1 (int ) ;

__attribute__((used)) static void p2p_timeout_prov_disc_during_find(struct p2p_data *p2p)
{
 p2p_dbg(p2p, "Provision Discovery Request timeout");
 p2p->cfg->send_action_done(p2p->cfg->cb_ctx);
 p2p_continue_find(p2p);
}
