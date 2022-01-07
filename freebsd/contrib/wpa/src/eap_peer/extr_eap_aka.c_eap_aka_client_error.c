
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpabuf {int dummy; } ;
struct eap_sim_msg {int dummy; } ;
struct eap_aka_data {int eap_method; scalar_t__ num_notification; scalar_t__ num_id_req; } ;


 int EAP_AKA_SUBTYPE_CLIENT_ERROR ;
 int EAP_CODE_RESPONSE ;
 int EAP_SIM_AT_CLIENT_ERROR_CODE ;
 int FAILURE ;
 int MSG_DEBUG ;
 int eap_aka_state (struct eap_aka_data*,int ) ;
 int eap_sim_msg_add (struct eap_sim_msg*,int ,int,int *,int ) ;
 struct wpabuf* eap_sim_msg_finish (struct eap_sim_msg*,int ,int *,int *,int ) ;
 struct eap_sim_msg* eap_sim_msg_init (int ,int ,int ,int ) ;
 int wpa_printf (int ,char*,int) ;

__attribute__((used)) static struct wpabuf * eap_aka_client_error(struct eap_aka_data *data, u8 id,
         int err)
{
 struct eap_sim_msg *msg;

 eap_aka_state(data, FAILURE);
 data->num_id_req = 0;
 data->num_notification = 0;

 wpa_printf(MSG_DEBUG, "EAP-AKA: Send Client-Error (error code %d)",
     err);
 msg = eap_sim_msg_init(EAP_CODE_RESPONSE, id, data->eap_method,
          EAP_AKA_SUBTYPE_CLIENT_ERROR);
 eap_sim_msg_add(msg, EAP_SIM_AT_CLIENT_ERROR_CODE, err, ((void*)0), 0);
 return eap_sim_msg_finish(msg, data->eap_method, ((void*)0), ((void*)0), 0);
}
