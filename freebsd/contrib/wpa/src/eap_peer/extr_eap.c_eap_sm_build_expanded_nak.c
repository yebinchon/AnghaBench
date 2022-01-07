
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpabuf {int dummy; } ;
struct eap_sm {scalar_t__ reqVendor; scalar_t__ reqVendorMethod; } ;
struct eap_method {scalar_t__ vendor; scalar_t__ method; struct eap_method* next; } ;


 int EAP_CODE_RESPONSE ;
 int EAP_TYPE_EXPANDED ;
 scalar_t__ EAP_TYPE_NAK ;
 scalar_t__ EAP_TYPE_NONE ;
 scalar_t__ EAP_VENDOR_IETF ;
 int MSG_DEBUG ;
 scalar_t__ eap_allowed_method (struct eap_sm*,scalar_t__,scalar_t__) ;
 struct wpabuf* eap_msg_alloc (scalar_t__,int ,int,int ,int) ;
 int eap_update_len (struct wpabuf*) ;
 int wpa_printf (int ,char*,...) ;
 int wpabuf_put_be24 (struct wpabuf*,scalar_t__) ;
 int wpabuf_put_be32 (struct wpabuf*,scalar_t__) ;
 int wpabuf_put_u8 (struct wpabuf*,int ) ;

__attribute__((used)) static struct wpabuf * eap_sm_build_expanded_nak(
 struct eap_sm *sm, int id, const struct eap_method *methods,
 size_t count)
{
 struct wpabuf *resp;
 int found = 0;
 const struct eap_method *m;

 wpa_printf(MSG_DEBUG, "EAP: Building expanded EAP-Nak");


 resp = eap_msg_alloc(EAP_VENDOR_IETF, EAP_TYPE_EXPANDED,
        8 + 8 * (count + 1), EAP_CODE_RESPONSE, id);
 if (resp == ((void*)0))
  return ((void*)0);

 wpabuf_put_be24(resp, EAP_VENDOR_IETF);
 wpabuf_put_be32(resp, EAP_TYPE_NAK);

 for (m = methods; m; m = m->next) {
  if (sm->reqVendor == m->vendor &&
      sm->reqVendorMethod == m->method)
   continue;
  if (eap_allowed_method(sm, m->vendor, m->method)) {
   wpa_printf(MSG_DEBUG, "EAP: allowed type: "
       "vendor=%u method=%u",
       m->vendor, m->method);
   wpabuf_put_u8(resp, EAP_TYPE_EXPANDED);
   wpabuf_put_be24(resp, m->vendor);
   wpabuf_put_be32(resp, m->method);

   found++;
  }
 }
 if (!found) {
  wpa_printf(MSG_DEBUG, "EAP: no more allowed methods");
  wpabuf_put_u8(resp, EAP_TYPE_EXPANDED);
  wpabuf_put_be24(resp, EAP_VENDOR_IETF);
  wpabuf_put_be32(resp, EAP_TYPE_NONE);
 }

 eap_update_len(resp);

 return resp;
}
