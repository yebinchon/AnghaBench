
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpabuf {int dummy; } ;
struct eap_sm {int dummy; } ;
struct eap_sim_msg {int dummy; } ;
struct eap_aka_data {int reauth; size_t reauth_id_len; size_t pseudonym_len; int eap_method; int * pseudonym; int * reauth_id; } ;
typedef enum eap_sim_id_req { ____Placeholder_eap_sim_id_req } eap_sim_id_req ;


 int ANY_ID ;
 int CLEAR_EAP_ID ;
 int CLEAR_PSEUDONYM ;
 int CLEAR_REAUTH_ID ;
 int EAP_AKA_SUBTYPE_IDENTITY ;
 int EAP_CODE_RESPONSE ;
 int EAP_SIM_AT_IDENTITY ;
 int FULLAUTH_ID ;
 int MSG_DEBUG ;
 int NO_ID_REQ ;
 int eap_aka_clear_identities (struct eap_sm*,struct eap_aka_data*,int) ;
 int * eap_get_config_identity (struct eap_sm*,size_t*) ;
 scalar_t__ eap_sim_anonymous_username (int *,size_t) ;
 int eap_sim_msg_add (struct eap_sim_msg*,int ,size_t,int const*,size_t) ;
 struct wpabuf* eap_sim_msg_finish (struct eap_sim_msg*,int ,int *,int *,int ) ;
 struct eap_sim_msg* eap_sim_msg_init (int ,int ,int ,int ) ;
 int wpa_hexdump_ascii (int ,char*,int const*,size_t) ;
 int wpa_printf (int ,char*,int ) ;

__attribute__((used)) static struct wpabuf * eap_aka_response_identity(struct eap_sm *sm,
       struct eap_aka_data *data,
       u8 id,
       enum eap_sim_id_req id_req)
{
 const u8 *identity = ((void*)0);
 size_t identity_len = 0;
 struct eap_sim_msg *msg;

 data->reauth = 0;
 if (id_req == ANY_ID && data->reauth_id) {
  identity = data->reauth_id;
  identity_len = data->reauth_id_len;
  data->reauth = 1;
 } else if ((id_req == ANY_ID || id_req == FULLAUTH_ID) &&
     data->pseudonym &&
     !eap_sim_anonymous_username(data->pseudonym,
            data->pseudonym_len)) {
  identity = data->pseudonym;
  identity_len = data->pseudonym_len;
  eap_aka_clear_identities(sm, data, CLEAR_REAUTH_ID);
 } else if (id_req != NO_ID_REQ) {
  identity = eap_get_config_identity(sm, &identity_len);
  if (identity) {
   int ids = CLEAR_PSEUDONYM | CLEAR_REAUTH_ID;

   if (data->pseudonym &&
       eap_sim_anonymous_username(data->pseudonym,
             data->pseudonym_len))
    ids &= ~CLEAR_PSEUDONYM;
   eap_aka_clear_identities(sm, data, ids);
  }
 }
 if (id_req != NO_ID_REQ)
  eap_aka_clear_identities(sm, data, CLEAR_EAP_ID);

 wpa_printf(MSG_DEBUG, "Generating EAP-AKA Identity (id=%d)", id);
 msg = eap_sim_msg_init(EAP_CODE_RESPONSE, id, data->eap_method,
          EAP_AKA_SUBTYPE_IDENTITY);

 if (identity) {
  wpa_hexdump_ascii(MSG_DEBUG, "   AT_IDENTITY",
      identity, identity_len);
  eap_sim_msg_add(msg, EAP_SIM_AT_IDENTITY, identity_len,
    identity, identity_len);
 }

 return eap_sim_msg_finish(msg, data->eap_method, ((void*)0), ((void*)0), 0);
}
