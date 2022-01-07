
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_sm {int dummy; } ;
struct eap_sim_data {scalar_t__ use_result_ind; } ;


 int CLEAR_EAP_ID ;
 int eap_sim_clear_identities (struct eap_sm*,struct eap_sim_data*,int ) ;
 int eap_sim_clear_keys (struct eap_sim_data*,int) ;

__attribute__((used)) static void eap_sim_deinit_for_reauth(struct eap_sm *sm, void *priv)
{
 struct eap_sim_data *data = priv;
 eap_sim_clear_identities(sm, data, CLEAR_EAP_ID);
 data->use_result_ind = 0;
 eap_sim_clear_keys(data, 1);
}
