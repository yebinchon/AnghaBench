
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u16 ;
struct wpabuf {int dummy; } ;
struct eap_sm {TYPE_2__* user; scalar_t__ eap_sim_aka_result_ind; } ;
struct eap_sim_msg {int dummy; } ;
struct eap_aka_data {scalar_t__ eap_method; int k_aut; scalar_t__ network_name_len; int * network_name; scalar_t__ kdf; int * autn; int * rand; } ;
struct TYPE_4__ {TYPE_1__* methods; } ;
struct TYPE_3__ {scalar_t__ vendor; scalar_t__ method; } ;


 scalar_t__ EAP_AKA_AUTN_LEN ;
 scalar_t__ EAP_AKA_BIDDING_FLAG_D ;
 scalar_t__ EAP_AKA_PRIME_KDF ;
 scalar_t__ EAP_AKA_RAND_LEN ;
 int EAP_AKA_SUBTYPE_CHALLENGE ;
 int EAP_CODE_REQUEST ;
 int EAP_MAX_METHODS ;
 int EAP_SIM_AT_AUTN ;
 int EAP_SIM_AT_BIDDING ;
 int EAP_SIM_AT_KDF ;
 int EAP_SIM_AT_KDF_INPUT ;
 int EAP_SIM_AT_MAC ;
 int EAP_SIM_AT_RAND ;
 int EAP_SIM_AT_RESULT_IND ;
 scalar_t__ EAP_TYPE_AKA ;
 scalar_t__ EAP_TYPE_AKA_PRIME ;
 scalar_t__ EAP_TYPE_NONE ;
 scalar_t__ EAP_VENDOR_IETF ;
 int MSG_DEBUG ;
 int eap_aka_add_checkcode (struct eap_aka_data*,struct eap_sim_msg*) ;
 scalar_t__ eap_aka_build_encr (struct eap_sm*,struct eap_aka_data*,struct eap_sim_msg*,int ,int *) ;
 int eap_sim_msg_add (struct eap_sim_msg*,int ,scalar_t__,int *,scalar_t__) ;
 int eap_sim_msg_add_mac (struct eap_sim_msg*,int ) ;
 struct wpabuf* eap_sim_msg_finish (struct eap_sim_msg*,scalar_t__,int ,int *,int ) ;
 int eap_sim_msg_free (struct eap_sim_msg*) ;
 struct eap_sim_msg* eap_sim_msg_init (int ,int ,scalar_t__,int ) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static struct wpabuf * eap_aka_build_challenge(struct eap_sm *sm,
            struct eap_aka_data *data,
            u8 id)
{
 struct eap_sim_msg *msg;

 wpa_printf(MSG_DEBUG, "EAP-AKA: Generating Challenge");
 msg = eap_sim_msg_init(EAP_CODE_REQUEST, id, data->eap_method,
          EAP_AKA_SUBTYPE_CHALLENGE);
 wpa_printf(MSG_DEBUG, "   AT_RAND");
 eap_sim_msg_add(msg, EAP_SIM_AT_RAND, 0, data->rand, EAP_AKA_RAND_LEN);
 wpa_printf(MSG_DEBUG, "   AT_AUTN");
 eap_sim_msg_add(msg, EAP_SIM_AT_AUTN, 0, data->autn, EAP_AKA_AUTN_LEN);
 if (data->eap_method == EAP_TYPE_AKA_PRIME) {
  if (data->kdf) {

   wpa_printf(MSG_DEBUG, "   AT_KDF");
   eap_sim_msg_add(msg, EAP_SIM_AT_KDF, data->kdf,
     ((void*)0), 0);
  }
  wpa_printf(MSG_DEBUG, "   AT_KDF");
  eap_sim_msg_add(msg, EAP_SIM_AT_KDF, EAP_AKA_PRIME_KDF,
    ((void*)0), 0);
  wpa_printf(MSG_DEBUG, "   AT_KDF_INPUT");
  eap_sim_msg_add(msg, EAP_SIM_AT_KDF_INPUT,
    data->network_name_len,
    data->network_name, data->network_name_len);
 }

 if (eap_aka_build_encr(sm, data, msg, 0, ((void*)0))) {
  eap_sim_msg_free(msg);
  return ((void*)0);
 }

 eap_aka_add_checkcode(data, msg);

 if (sm->eap_sim_aka_result_ind) {
  wpa_printf(MSG_DEBUG, "   AT_RESULT_IND");
  eap_sim_msg_add(msg, EAP_SIM_AT_RESULT_IND, 0, ((void*)0), 0);
 }
 wpa_printf(MSG_DEBUG, "   AT_MAC");
 eap_sim_msg_add_mac(msg, EAP_SIM_AT_MAC);
 return eap_sim_msg_finish(msg, data->eap_method, data->k_aut, ((void*)0), 0);
}
