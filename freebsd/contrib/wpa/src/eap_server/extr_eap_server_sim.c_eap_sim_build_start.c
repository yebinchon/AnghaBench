
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ver ;
typedef scalar_t__ u8 ;
struct wpabuf {int dummy; } ;
struct eap_sm {scalar_t__* identity; scalar_t__ identity_len; } ;
struct eap_sim_msg {int dummy; } ;
struct eap_sim_data {int start_round; } ;


 int EAP_CODE_REQUEST ;
 int EAP_SIM_AT_ANY_ID_REQ ;
 int EAP_SIM_AT_FULLAUTH_ID_REQ ;
 int EAP_SIM_AT_PERMANENT_ID_REQ ;
 int EAP_SIM_AT_VERSION_LIST ;
 scalar_t__ EAP_SIM_REAUTH_ID_PREFIX ;
 int EAP_SIM_SUBTYPE_START ;
 scalar_t__ EAP_SIM_VERSION ;
 int EAP_TYPE_SIM ;
 int MSG_DEBUG ;
 int eap_sim_msg_add (struct eap_sim_msg*,int ,int,scalar_t__*,int) ;
 struct wpabuf* eap_sim_msg_finish (struct eap_sim_msg*,int ,int *,int *,int ) ;
 int eap_sim_msg_free (struct eap_sim_msg*) ;
 struct eap_sim_msg* eap_sim_msg_init (int ,scalar_t__,int ,int ) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static struct wpabuf * eap_sim_build_start(struct eap_sm *sm,
        struct eap_sim_data *data, u8 id)
{
 struct eap_sim_msg *msg;
 u8 ver[2];

 wpa_printf(MSG_DEBUG, "EAP-SIM: Generating Start");
 msg = eap_sim_msg_init(EAP_CODE_REQUEST, id, EAP_TYPE_SIM,
          EAP_SIM_SUBTYPE_START);
 data->start_round++;
 if (data->start_round == 1) {




  wpa_printf(MSG_DEBUG, "   AT_ANY_ID_REQ");
  eap_sim_msg_add(msg, EAP_SIM_AT_ANY_ID_REQ, 0, ((void*)0), 0);
 } else if (data->start_round > 3) {

  eap_sim_msg_free(msg);
  return ((void*)0);
 } else if (data->start_round == 0) {






 } else if (sm->identity && sm->identity_len > 0 &&
     sm->identity[0] == EAP_SIM_REAUTH_ID_PREFIX) {

  wpa_printf(MSG_DEBUG, "   AT_FULLAUTH_ID_REQ");
  eap_sim_msg_add(msg, EAP_SIM_AT_FULLAUTH_ID_REQ, 0, ((void*)0), 0);
 } else {
  wpa_printf(MSG_DEBUG, "   AT_PERMANENT_ID_REQ");
  eap_sim_msg_add(msg, EAP_SIM_AT_PERMANENT_ID_REQ, 0, ((void*)0), 0);
 }
 wpa_printf(MSG_DEBUG, "   AT_VERSION_LIST");
 ver[0] = 0;
 ver[1] = EAP_SIM_VERSION;
 eap_sim_msg_add(msg, EAP_SIM_AT_VERSION_LIST, sizeof(ver),
   ver, sizeof(ver));
 return eap_sim_msg_finish(msg, EAP_TYPE_SIM, ((void*)0), ((void*)0), 0);
}
