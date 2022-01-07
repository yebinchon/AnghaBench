
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpabuf {int dummy; } ;
struct eap_pax_hdr {int public_key_id; int dh_group_id; int mac_id; scalar_t__ flags; int op_code; } ;


 int EAP_CODE_RESPONSE ;
 int EAP_TYPE_PAX ;
 int EAP_VENDOR_IETF ;
 struct wpabuf* eap_msg_alloc (int ,int ,int,int ,int ) ;
 struct eap_pax_hdr* wpabuf_put (struct wpabuf*,int) ;

__attribute__((used)) static struct wpabuf * eap_pax_alloc_resp(const struct eap_pax_hdr *req,
       u8 id, u8 op_code, size_t plen)
{
 struct wpabuf *resp;
 struct eap_pax_hdr *pax;

 resp = eap_msg_alloc(EAP_VENDOR_IETF, EAP_TYPE_PAX,
        sizeof(*pax) + plen, EAP_CODE_RESPONSE, id);
 if (resp == ((void*)0))
  return ((void*)0);

 pax = wpabuf_put(resp, sizeof(*pax));
 pax->op_code = op_code;
 pax->flags = 0;
 pax->mac_id = req->mac_id;
 pax->dh_group_id = req->dh_group_id;
 pax->public_key_id = req->public_key_id;

 return resp;
}
