
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dpp_global {int dummy; } ;


 int dpp_bootstrap_del (struct dpp_global*,int ) ;
 int dpp_configurator_del (struct dpp_global*,int ) ;
 int dpp_controller_stop (struct dpp_global*) ;
 int dpp_relay_flush_controllers (struct dpp_global*) ;
 int dpp_tcp_init_flush (struct dpp_global*) ;

void dpp_global_clear(struct dpp_global *dpp)
{
 if (!dpp)
  return;

 dpp_bootstrap_del(dpp, 0);
 dpp_configurator_del(dpp, 0);





}
