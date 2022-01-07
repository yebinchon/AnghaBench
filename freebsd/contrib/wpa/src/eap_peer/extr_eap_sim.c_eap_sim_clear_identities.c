
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_sm {int dummy; } ;
struct eap_sim_data {scalar_t__ last_eap_identity_len; int * last_eap_identity; scalar_t__ reauth_id_len; int * reauth_id; scalar_t__ use_pseudonym; scalar_t__ pseudonym_len; int * pseudonym; } ;


 int CLEAR_EAP_ID ;
 int CLEAR_PSEUDONYM ;
 int CLEAR_REAUTH_ID ;
 int MSG_DEBUG ;
 int eap_set_anon_id (struct eap_sm*,int *,int ) ;
 int os_free (int *) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static void eap_sim_clear_identities(struct eap_sm *sm,
         struct eap_sim_data *data, int id)
{
 if ((id & CLEAR_PSEUDONYM) && data->pseudonym) {
  wpa_printf(MSG_DEBUG, "EAP-SIM: forgetting old pseudonym");
  os_free(data->pseudonym);
  data->pseudonym = ((void*)0);
  data->pseudonym_len = 0;
  if (data->use_pseudonym)
   eap_set_anon_id(sm, ((void*)0), 0);
 }
 if ((id & CLEAR_REAUTH_ID) && data->reauth_id) {
  wpa_printf(MSG_DEBUG, "EAP-SIM: forgetting old reauth_id");
  os_free(data->reauth_id);
  data->reauth_id = ((void*)0);
  data->reauth_id_len = 0;
 }
 if ((id & CLEAR_EAP_ID) && data->last_eap_identity) {
  wpa_printf(MSG_DEBUG, "EAP-SIM: forgetting old eap_id");
  os_free(data->last_eap_identity);
  data->last_eap_identity = ((void*)0);
  data->last_eap_identity_len = 0;
 }
}
