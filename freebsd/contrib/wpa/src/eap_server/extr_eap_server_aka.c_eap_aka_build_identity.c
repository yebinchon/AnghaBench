
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpabuf {int dummy; } ;
struct eap_sm {scalar_t__* identity; scalar_t__ identity_len; } ;
struct eap_sim_msg {int dummy; } ;
struct eap_aka_data {int identity_round; int pending_id; int eap_method; } ;


 scalar_t__ EAP_AKA_PRIME_REAUTH_ID_PREFIX ;
 scalar_t__ EAP_AKA_REAUTH_ID_PREFIX ;
 int EAP_AKA_SUBTYPE_IDENTITY ;
 int EAP_CODE_REQUEST ;
 int EAP_SIM_AT_ANY_ID_REQ ;
 int EAP_SIM_AT_FULLAUTH_ID_REQ ;
 int EAP_SIM_AT_PERMANENT_ID_REQ ;
 int MSG_DEBUG ;
 scalar_t__ eap_aka_add_id_msg (struct eap_aka_data*,struct wpabuf*) ;
 int eap_sim_msg_add (struct eap_sim_msg*,int ,int ,int *,int ) ;
 struct wpabuf* eap_sim_msg_finish (struct eap_sim_msg*,int ,int *,int *,int ) ;
 int eap_sim_msg_free (struct eap_sim_msg*) ;
 struct eap_sim_msg* eap_sim_msg_init (int ,int ,int ,int ) ;
 int wpa_printf (int ,char*) ;
 int wpabuf_free (struct wpabuf*) ;

__attribute__((used)) static struct wpabuf * eap_aka_build_identity(struct eap_sm *sm,
           struct eap_aka_data *data, u8 id)
{
 struct eap_sim_msg *msg;
 struct wpabuf *buf;

 wpa_printf(MSG_DEBUG, "EAP-AKA: Generating Identity");
 msg = eap_sim_msg_init(EAP_CODE_REQUEST, id, data->eap_method,
          EAP_AKA_SUBTYPE_IDENTITY);
 data->identity_round++;
 if (data->identity_round == 1) {





  wpa_printf(MSG_DEBUG, "   AT_ANY_ID_REQ");
  eap_sim_msg_add(msg, EAP_SIM_AT_ANY_ID_REQ, 0, ((void*)0), 0);
 } else if (data->identity_round > 3) {

  eap_sim_msg_free(msg);
  return ((void*)0);
 } else if (sm->identity && sm->identity_len > 0 &&
     (sm->identity[0] == EAP_AKA_REAUTH_ID_PREFIX ||
      sm->identity[0] == EAP_AKA_PRIME_REAUTH_ID_PREFIX)) {

  wpa_printf(MSG_DEBUG, "   AT_FULLAUTH_ID_REQ");
  eap_sim_msg_add(msg, EAP_SIM_AT_FULLAUTH_ID_REQ, 0, ((void*)0), 0);
 } else {
  wpa_printf(MSG_DEBUG, "   AT_PERMANENT_ID_REQ");
  eap_sim_msg_add(msg, EAP_SIM_AT_PERMANENT_ID_REQ, 0, ((void*)0), 0);
 }
 buf = eap_sim_msg_finish(msg, data->eap_method, ((void*)0), ((void*)0), 0);
 if (eap_aka_add_id_msg(data, buf) < 0) {
  wpabuf_free(buf);
  return ((void*)0);
 }
 data->pending_id = id;
 return buf;
}
