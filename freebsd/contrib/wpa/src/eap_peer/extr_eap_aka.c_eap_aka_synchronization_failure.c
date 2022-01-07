
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpabuf {int dummy; } ;
struct eap_sim_msg {int dummy; } ;
struct eap_sim_attrs {size_t kdf_count; int * kdf; } ;
struct eap_aka_data {int eap_method; int auts; scalar_t__ num_notification; scalar_t__ num_id_req; } ;


 int EAP_AKA_AUTS_LEN ;
 int EAP_AKA_SUBTYPE_SYNCHRONIZATION_FAILURE ;
 int EAP_CODE_RESPONSE ;
 int EAP_SIM_AT_AUTS ;
 int EAP_SIM_AT_KDF ;
 int EAP_TYPE_AKA_PRIME ;
 int MSG_DEBUG ;
 int eap_sim_msg_add (struct eap_sim_msg*,int ,int ,int *,int ) ;
 int eap_sim_msg_add_full (struct eap_sim_msg*,int ,int ,int ) ;
 struct wpabuf* eap_sim_msg_finish (struct eap_sim_msg*,int ,int *,int *,int ) ;
 struct eap_sim_msg* eap_sim_msg_init (int ,int ,int ,int ) ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static struct wpabuf * eap_aka_synchronization_failure(
 struct eap_aka_data *data, u8 id, struct eap_sim_attrs *attr)
{
 struct eap_sim_msg *msg;

 data->num_id_req = 0;
 data->num_notification = 0;

 wpa_printf(MSG_DEBUG, "Generating EAP-AKA Synchronization-Failure "
     "(id=%d)", id);
 msg = eap_sim_msg_init(EAP_CODE_RESPONSE, id, data->eap_method,
          EAP_AKA_SUBTYPE_SYNCHRONIZATION_FAILURE);
 wpa_printf(MSG_DEBUG, "   AT_AUTS");
 eap_sim_msg_add_full(msg, EAP_SIM_AT_AUTS, data->auts,
        EAP_AKA_AUTS_LEN);
 if (data->eap_method == EAP_TYPE_AKA_PRIME) {
  size_t i;

  for (i = 0; i < attr->kdf_count; i++) {
   wpa_printf(MSG_DEBUG, "   AT_KDF");
   eap_sim_msg_add(msg, EAP_SIM_AT_KDF, attr->kdf[i],
     ((void*)0), 0);
  }
 }
 return eap_sim_msg_finish(msg, data->eap_method, ((void*)0), ((void*)0), 0);
}
