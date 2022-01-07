
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpabuf {int dummy; } ;
struct eap_sm {int dummy; } ;
struct eap_sake_parse_attr {int any_id_req; int perm_id_req; } ;
struct eap_sake_data {scalar_t__ state; scalar_t__ peerid_len; int peerid; } ;
struct eap_method_ret {int ignore; } ;


 int CHALLENGE ;
 int EAP_SAKE_AT_PEERID ;
 int EAP_SAKE_SUBTYPE_IDENTITY ;
 scalar_t__ IDENTITY ;
 int MSG_DEBUG ;
 int MSG_INFO ;
 int TRUE ;
 int eap_sake_add_attr (struct wpabuf*,int ,int ,scalar_t__) ;
 struct wpabuf* eap_sake_build_msg (struct eap_sake_data*,int ,scalar_t__,int ) ;
 scalar_t__ eap_sake_parse_attributes (int const*,size_t,struct eap_sake_parse_attr*) ;
 int eap_sake_state (struct eap_sake_data*,int ) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static struct wpabuf * eap_sake_process_identity(struct eap_sm *sm,
       struct eap_sake_data *data,
       struct eap_method_ret *ret,
       u8 id,
       const u8 *payload,
       size_t payload_len)
{
 struct eap_sake_parse_attr attr;
 struct wpabuf *resp;

 if (data->state != IDENTITY) {
  ret->ignore = TRUE;
  return ((void*)0);
 }

 wpa_printf(MSG_DEBUG, "EAP-SAKE: Received Request/Identity");

 if (eap_sake_parse_attributes(payload, payload_len, &attr))
  return ((void*)0);

 if (!attr.perm_id_req && !attr.any_id_req) {
  wpa_printf(MSG_INFO, "EAP-SAKE: No AT_PERM_ID_REQ or "
      "AT_ANY_ID_REQ in Request/Identity");
  return ((void*)0);
 }

 wpa_printf(MSG_DEBUG, "EAP-SAKE: Sending Response/Identity");

 resp = eap_sake_build_msg(data, id, 2 + data->peerid_len,
      EAP_SAKE_SUBTYPE_IDENTITY);
 if (resp == ((void*)0))
  return ((void*)0);

 wpa_printf(MSG_DEBUG, "EAP-SAKE: * AT_PEERID");
 eap_sake_add_attr(resp, EAP_SAKE_AT_PEERID,
     data->peerid, data->peerid_len);

 eap_sake_state(data, CHALLENGE);

 return resp;
}
