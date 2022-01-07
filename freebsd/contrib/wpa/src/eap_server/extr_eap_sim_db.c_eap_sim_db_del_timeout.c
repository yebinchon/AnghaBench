
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_sim_db_pending {int dummy; } ;
struct eap_sim_db_data {int dummy; } ;


 int MSG_DEBUG ;
 int eap_sim_db_del_pending (struct eap_sim_db_data*,struct eap_sim_db_pending*) ;
 int wpa_printf (int ,char*,struct eap_sim_db_pending*) ;

__attribute__((used)) static void eap_sim_db_del_timeout(void *eloop_ctx, void *user_ctx)
{
 struct eap_sim_db_data *data = eloop_ctx;
 struct eap_sim_db_pending *entry = user_ctx;

 wpa_printf(MSG_DEBUG, "EAP-SIM DB: Delete query timeout for %p", entry);
 eap_sim_db_del_pending(data, entry);
}
