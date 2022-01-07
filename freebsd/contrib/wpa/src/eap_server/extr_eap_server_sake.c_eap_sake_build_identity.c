
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpabuf {int dummy; } ;
struct eap_sm {int server_id_len; int * server_id; } ;
struct eap_sake_data {int state; } ;


 int EAP_SAKE_AT_PERM_ID_REQ ;
 int EAP_SAKE_AT_SERVERID ;
 int EAP_SAKE_SUBTYPE_IDENTITY ;
 int FAILURE ;
 int MSG_DEBUG ;
 int eap_sake_add_attr (struct wpabuf*,int ,int *,int) ;
 struct wpabuf* eap_sake_build_msg (struct eap_sake_data*,int ,size_t,int ) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static struct wpabuf * eap_sake_build_identity(struct eap_sm *sm,
            struct eap_sake_data *data,
            u8 id)
{
 struct wpabuf *msg;
 size_t plen;

 wpa_printf(MSG_DEBUG, "EAP-SAKE: Request/Identity");

 plen = 4;
 plen += 2 + sm->server_id_len;
 msg = eap_sake_build_msg(data, id, plen, EAP_SAKE_SUBTYPE_IDENTITY);
 if (msg == ((void*)0)) {
  data->state = FAILURE;
  return ((void*)0);
 }

 wpa_printf(MSG_DEBUG, "EAP-SAKE: * AT_PERM_ID_REQ");
 eap_sake_add_attr(msg, EAP_SAKE_AT_PERM_ID_REQ, ((void*)0), 2);

 wpa_printf(MSG_DEBUG, "EAP-SAKE: * AT_SERVERID");
 eap_sake_add_attr(msg, EAP_SAKE_AT_SERVERID,
     sm->server_id, sm->server_id_len);

 return msg;
}
