
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_sm {int dummy; } ;
struct eap_sim_data {struct eap_sim_data* last_eap_identity; struct eap_sim_data* reauth_id; struct eap_sim_data* pseudonym; struct eap_sim_data* ver_list; } ;


 int eap_sim_clear_keys (struct eap_sim_data*,int ) ;
 int os_free (struct eap_sim_data*) ;

__attribute__((used)) static void eap_sim_deinit(struct eap_sm *sm, void *priv)
{
 struct eap_sim_data *data = priv;
 if (data) {
  os_free(data->ver_list);
  os_free(data->pseudonym);
  os_free(data->reauth_id);
  os_free(data->last_eap_identity);
  eap_sim_clear_keys(data, 0);
  os_free(data);
 }
}
