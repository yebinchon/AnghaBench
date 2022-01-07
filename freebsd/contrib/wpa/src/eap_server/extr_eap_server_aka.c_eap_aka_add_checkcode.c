
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct eap_sim_msg {int dummy; } ;
struct eap_aka_data {scalar_t__ eap_method; int * id_msgs; } ;


 int EAP_AKA_CHECKCODE_LEN ;
 int EAP_AKA_PRIME_CHECKCODE_LEN ;
 int EAP_SIM_AT_CHECKCODE ;
 scalar_t__ EAP_TYPE_AKA_PRIME ;
 int MSG_DEBUG ;
 int MSG_MSGDUMP ;
 int SHA256_MAC_LEN ;
 int eap_sim_msg_add (struct eap_sim_msg*,int ,int ,int *,int ) ;
 int sha1_vector (int,int const**,size_t*,int *) ;
 int sha256_vector (int,int const**,size_t*,int *) ;
 int wpa_hexdump (int ,char*,int const*,size_t) ;
 int wpa_printf (int ,char*) ;
 int * wpabuf_head (int *) ;
 size_t wpabuf_len (int *) ;

__attribute__((used)) static void eap_aka_add_checkcode(struct eap_aka_data *data,
      struct eap_sim_msg *msg)
{
 const u8 *addr;
 size_t len;
 u8 hash[SHA256_MAC_LEN];

 wpa_printf(MSG_DEBUG, "   AT_CHECKCODE");

 if (data->id_msgs == ((void*)0)) {




  eap_sim_msg_add(msg, EAP_SIM_AT_CHECKCODE, 0, ((void*)0), 0);
  return;
 }


 addr = wpabuf_head(data->id_msgs);
 len = wpabuf_len(data->id_msgs);
 wpa_hexdump(MSG_MSGDUMP, "EAP-AKA: AT_CHECKCODE data", addr, len);
 if (data->eap_method == EAP_TYPE_AKA_PRIME)
  sha256_vector(1, &addr, &len, hash);
 else
  sha1_vector(1, &addr, &len, hash);

 eap_sim_msg_add(msg, EAP_SIM_AT_CHECKCODE, 0, hash,
   data->eap_method == EAP_TYPE_AKA_PRIME ?
   EAP_AKA_PRIME_CHECKCODE_LEN : EAP_AKA_CHECKCODE_LEN);
}
