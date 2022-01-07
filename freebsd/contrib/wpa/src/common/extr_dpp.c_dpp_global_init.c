
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dpp_global_config {int process_conf_obj; int cb_ctx; int msg_ctx; } ;
struct dpp_global {int tcp_init; int controllers; int configurator; int bootstrap; int process_conf_obj; int cb_ctx; int msg_ctx; } ;


 int dl_list_init (int *) ;
 struct dpp_global* os_zalloc (int) ;

struct dpp_global * dpp_global_init(struct dpp_global_config *config)
{
 struct dpp_global *dpp;

 dpp = os_zalloc(sizeof(*dpp));
 if (!dpp)
  return ((void*)0);
 dpp->msg_ctx = config->msg_ctx;





 dl_list_init(&dpp->bootstrap);
 dl_list_init(&dpp->configurator);





 return dpp;
}
