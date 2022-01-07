
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_sim_db_pending {int cb_session_ctx; int state; } ;
struct eap_sim_db_data {int ctx; int (* get_complete_cb ) (int ,int ) ;} ;


 int FAILURE ;
 int MSG_DEBUG ;
 int eap_sim_db_del_timeout ;
 int eloop_register_timeout (int,int ,int ,struct eap_sim_db_data*,struct eap_sim_db_pending*) ;
 int stub1 (int ,int ) ;
 int wpa_printf (int ,char*,struct eap_sim_db_pending*) ;

__attribute__((used)) static void eap_sim_db_query_timeout(void *eloop_ctx, void *user_ctx)
{
 struct eap_sim_db_data *data = eloop_ctx;
 struct eap_sim_db_pending *entry = user_ctx;





 wpa_printf(MSG_DEBUG, "EAP-SIM DB: Query timeout for %p", entry);
 entry->state = FAILURE;
 data->get_complete_cb(data->ctx, entry->cb_session_ctx);
 eloop_register_timeout(1, 0, eap_sim_db_del_timeout, data, entry);
}
