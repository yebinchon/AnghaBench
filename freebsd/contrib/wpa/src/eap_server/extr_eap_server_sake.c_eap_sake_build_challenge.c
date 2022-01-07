
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpabuf {int dummy; } ;
struct eap_sm {int server_id_len; int server_id; } ;
struct eap_sake_data {int rand_s; void* state; } ;


 int EAP_SAKE_AT_RAND_S ;
 int EAP_SAKE_AT_SERVERID ;
 int EAP_SAKE_RAND_LEN ;
 int EAP_SAKE_SUBTYPE_CHALLENGE ;
 void* FAILURE ;
 int MSG_DEBUG ;
 int MSG_ERROR ;
 int MSG_MSGDUMP ;
 int eap_sake_add_attr (struct wpabuf*,int ,int ,int) ;
 struct wpabuf* eap_sake_build_msg (struct eap_sake_data*,int ,size_t,int ) ;
 scalar_t__ random_get_bytes (int ,int) ;
 int wpa_hexdump (int ,char*,int ,int) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static struct wpabuf * eap_sake_build_challenge(struct eap_sm *sm,
      struct eap_sake_data *data,
      u8 id)
{
 struct wpabuf *msg;
 size_t plen;

 wpa_printf(MSG_DEBUG, "EAP-SAKE: Request/Challenge");

 if (random_get_bytes(data->rand_s, EAP_SAKE_RAND_LEN)) {
  wpa_printf(MSG_ERROR, "EAP-SAKE: Failed to get random data");
  data->state = FAILURE;
  return ((void*)0);
 }
 wpa_hexdump(MSG_MSGDUMP, "EAP-SAKE: RAND_S (server rand)",
      data->rand_s, EAP_SAKE_RAND_LEN);

 plen = 2 + EAP_SAKE_RAND_LEN + 2 + sm->server_id_len;
 msg = eap_sake_build_msg(data, id, plen, EAP_SAKE_SUBTYPE_CHALLENGE);
 if (msg == ((void*)0)) {
  data->state = FAILURE;
  return ((void*)0);
 }

 wpa_printf(MSG_DEBUG, "EAP-SAKE: * AT_RAND_S");
 eap_sake_add_attr(msg, EAP_SAKE_AT_RAND_S,
     data->rand_s, EAP_SAKE_RAND_LEN);

 wpa_printf(MSG_DEBUG, "EAP-SAKE: * AT_SERVERID");
 eap_sake_add_attr(msg, EAP_SAKE_AT_SERVERID,
     sm->server_id, sm->server_id_len);

 return msg;
}
